#!/usr/bin/env ruby

require "json"
require "net/http"
require "time"
require "uri"
require "yaml"

if ENV["HTTP_PROXY"] && !ENV["http_proxy"]
  ENV["http_proxy"] = ENV["HTTP_PROXY"]
  ENV.delete("HTTP_PROXY")
end

ROOT = File.expand_path("..", __dir__)
DATA_PATH = File.join(ROOT, "_data", "github_repos.yml")
README_PATH = File.join(ROOT, "README.md")
START_MARKER = "<!-- GITHUB-STATS:START -->"
END_MARKER = "<!-- GITHUB-STATS:END -->"

def fetch_json(uri, redirects_left = 3)
  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/vnd.github+json"
  request["User-Agent"] = "aCodeDog-github-stats"

  token = ENV["GITHUB_TOKEN"]
  request["Authorization"] = "Bearer #{token}" if token && !token.empty?

  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
    http.request(request)
  end

  # A renamed or transferred repository answers 301 with the new location.
  if response.is_a?(Net::HTTPRedirection) && response["location"] && redirects_left.positive?
    return fetch_json(URI(response["location"]), redirects_left - 1)
  end

  unless response.is_a?(Net::HTTPSuccess)
    raise "GitHub API error for #{uri}: #{response.code} #{response.message}"
  end

  JSON.parse(response.body)
end

def fetch_repo(repo)
  fetch_json(URI("https://api.github.com/repos/#{repo}"))
end

def fetch_shields_metric(repo, metric)
  uri = URI("https://img.shields.io/github/#{metric}/#{repo}.json")
  response = Net::HTTP.get_response(uri)

  unless response.is_a?(Net::HTTPSuccess)
    raise "Shields API error for #{repo} #{metric}: #{response.code} #{response.message}"
  end

  data = JSON.parse(response.body)
  value = data["value"] || data["message"]
  value.to_s.delete(",").to_i
end

def format_number(value)
  value.to_i.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

def shield_text(value)
  URI.encode_www_form_component(value.to_s).gsub("+", "%20").gsub("-", "--")
end

def static_badge(label, message, color)
  "https://img.shields.io/badge/#{shield_text(label)}-#{shield_text(message)}-#{color}?style=for-the-badge&labelColor=10233f"
end

def github_stars_badge(repo, label, color)
  "https://img.shields.io/github/stars/#{repo}?style=for-the-badge&label=#{URI.encode_www_form_component(label)}&color=#{color}&labelColor=10233f"
end

def badge_image(alt, src)
  %(<img alt="#{alt}" src="#{src}" />)
end

def linked_badge(href, alt, src)
  %(<a href="#{href}">#{badge_image(alt, src)}</a>)
end

repos = YAML.load_file(DATA_PATH).select { |repo| repo["include_in_stats"] }

stats = repos.map do |repo|
  github = repo.fetch("github")

  begin
    api_data = fetch_repo(github)
    repo.merge(
      "github_url" => api_data.fetch("html_url"),
      "stars" => api_data.fetch("stargazers_count"),
      "forks" => api_data.fetch("forks_count")
    )
  rescue => error
    warn "#{error.message}; falling back to Shields metrics for #{github}"
    repo.merge(
      "github_url" => "https://github.com/#{github}",
      "stars" => fetch_shields_metric(github, "stars"),
      "forks" => fetch_shields_metric(github, "forks")
    )
  end
end

total_stars = stats.sum { |repo| repo["stars"].to_i }
total_forks = stats.sum { |repo| repo["forks"].to_i }
updated_at = ENV.fetch("GITHUB_STATS_DATE", Time.now.utc.strftime("%Y-%m-%d"))

summary_badges = [
  badge_image("Tracked stars: #{format_number(total_stars)}", static_badge("Tracked Stars", format_number(total_stars), "e86454")),
  badge_image("Tracked forks: #{format_number(total_forks)}", static_badge("Forks", format_number(total_forks), "1f9a8a")),
  badge_image("Tracked repositories: #{stats.length}", static_badge("Repos", stats.length, "315f8f")),
  badge_image("Updated #{updated_at} UTC", static_badge("Updated", "#{updated_at} UTC", "c9932f"))
]

repo_badges = stats.each_with_index.map do |repo, index|
  colors = %w[e86454 1f9a8a 315f8f c9932f 5b6f95 8d6f64]
  stars = linked_badge(
    repo.fetch("github_url"),
    "#{repo.fetch("title")} GitHub stars",
    github_stars_badge(repo.fetch("github"), repo.fetch("title"), colors[index % colors.length])
  )
  code = linked_badge(
    repo.fetch("github_url"),
    "#{repo.fetch("title")} code",
    static_badge("Code", repo.fetch("github"), "20314a")
  )
  page = if repo["page_url"] && !repo["page_url"].empty?
    linked_badge(
      repo["page_url"],
      "#{repo.fetch("title")} project page",
      static_badge("Project", "Page", "1f9a8a")
    )
  end

  ([stars, page, code].compact.join("\n  "))
end

block = <<~MARKDOWN.strip
  #{START_MARKER}
  <p>
    #{summary_badges.join("\n  ")}
  </p>

  <p>
    #{repo_badges.join("\n  ")}
  </p>
  #{END_MARKER}
MARKDOWN

readme = File.read(README_PATH)
pattern = /#{Regexp.escape(START_MARKER)}.*?#{Regexp.escape(END_MARKER)}/m

unless readme.match?(pattern)
  raise "Could not find GitHub stats markers in README.md"
end

File.write(README_PATH, readme.sub(pattern, block))
