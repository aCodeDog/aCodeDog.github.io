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

def fetch_repo(repo)
  uri = URI("https://api.github.com/repos/#{repo}")
  request = Net::HTTP::Get.new(uri)
  request["Accept"] = "application/vnd.github+json"
  request["User-Agent"] = "aCodeDog-github-stats"

  token = ENV["GITHUB_TOKEN"]
  request["Authorization"] = "Bearer #{token}" if token && !token.empty?

  response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
    http.request(request)
  end

  unless response.is_a?(Net::HTTPSuccess)
    raise "GitHub API error for #{repo}: #{response.code} #{response.message}"
  end

  JSON.parse(response.body)
end

def format_number(value)
  value.to_i.to_s.reverse.scan(/.{1,3}/).join(",").reverse
end

def markdown_link(label, url)
  return "-" if url.nil? || url.empty?

  "[#{label}](#{url})"
end

repos = YAML.load_file(DATA_PATH).select { |repo| repo["include_in_stats"] }

stats = repos.map do |repo|
  api_data = fetch_repo(repo.fetch("github"))
  repo.merge(
    "github_url" => api_data.fetch("html_url"),
    "stars" => api_data.fetch("stargazers_count"),
    "forks" => api_data.fetch("forks_count")
  )
end

total_stars = stats.sum { |repo| repo["stars"].to_i }
total_forks = stats.sum { |repo| repo["forks"].to_i }
updated_at = ENV.fetch("GITHUB_STATS_DATE", Time.now.utc.strftime("%Y-%m-%d"))

rows = stats.map do |repo|
  [
    repo.fetch("title"),
    markdown_link("Project Page", repo["page_url"]),
    markdown_link(repo.fetch("github"), repo.fetch("github_url")),
    format_number(repo.fetch("stars"))
  ].join(" | ")
end

block = <<~MARKDOWN.strip
  #{START_MARKER}
  Tracked GitHub stars: **#{format_number(total_stars)}** across **#{stats.length}** repositories, plus **#{format_number(total_forks)}** forks. Updated #{updated_at} UTC.

  | Project | Page | Code | Stars |
  | --- | --- | --- | ---: |
  #{rows.map { |row| "| #{row} |" }.join("\n")}
  #{END_MARKER}
MARKDOWN

readme = File.read(README_PATH)
pattern = /#{Regexp.escape(START_MARKER)}.*?#{Regexp.escape(END_MARKER)}/m

unless readme.match?(pattern)
  raise "Could not find GitHub stats markers in README.md"
end

File.write(README_PATH, readme.sub(pattern, block))
