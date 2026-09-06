import json
import os
import re
import sys
from datetime import datetime, timezone
from urllib.parse import parse_qs, urljoin, urlparse

import requests
from bs4 import BeautifulSoup


DEFAULT_GOOGLE_SCHOLAR_ID = "GaJXZ-UAAAAJ"
SCHOLAR_BASE_URL = "https://scholar.google.com"


def parse_int(value):
    text = re.sub(r"[^\d]", "", value or "")
    return int(text) if text else 0


def text_of(node):
    return node.get_text(" ", strip=True) if node else ""


def fetch_profile_html(scholar_id):
    response = requests.get(
        f"{SCHOLAR_BASE_URL}/citations",
        params={"user": scholar_id, "hl": "en", "pagesize": "100"},
        headers={
            "User-Agent": (
                "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 "
                "(KHTML, like Gecko) Chrome/126.0 Safari/537.36"
            ),
            "Accept-Language": "en-US,en;q=0.9",
        },
        timeout=30,
    )
    response.raise_for_status()
    return response.text


def utc_now():
    return datetime.now(timezone.utc).isoformat()


def fetch_previous_author():
    repo = os.environ.get("GITHUB_REPOSITORY", "aCodeDog/aCodeDog.github.io")
    response = requests.get(
        f"https://raw.githubusercontent.com/{repo}/google-scholar-stats/gs_data.json",
        headers={"User-Agent": "aCodeDog-google-scholar-crawler"},
        timeout=30,
    )
    response.raise_for_status()
    return response.json()


def parse_metric_table(soup):
    metrics = {
        "citedby": 0,
        "citedby5y": 0,
        "hindex": 0,
        "hindex5y": 0,
        "i10index": 0,
        "i10index5y": 0,
    }
    metric_names = {
        "citations": ("citedby", "citedby5y"),
        "h-index": ("hindex", "hindex5y"),
        "i10-index": ("i10index", "i10index5y"),
    }

    for row in soup.select("#gsc_rsb_st tbody tr"):
        cells = row.find_all(["td", "th"])
        if len(cells) < 2:
            continue

        label = text_of(cells[0]).lower()
        if label not in metric_names:
            continue

        all_key, recent_key = metric_names[label]
        metrics[all_key] = parse_int(text_of(cells[1]))
        if len(cells) > 2:
            metrics[recent_key] = parse_int(text_of(cells[2]))

    if not metrics["citedby"]:
        description = soup.find("meta", attrs={"name": "description"})
        metrics["citedby"] = parse_int(description.get("content", "")) if description else 0

    return metrics


def parse_publications(soup):
    publications = {}

    for row in soup.select("tr.gsc_a_tr"):
        title_link = row.select_one("a.gsc_a_at")
        if not title_link:
            continue

        citation_url = urljoin(SCHOLAR_BASE_URL, title_link.get("href", ""))
        author_pub_id = parse_qs(urlparse(citation_url).query).get("citation_for_view", [None])[0]
        if not author_pub_id:
            continue

        gray_lines = row.select(".gs_gray")
        citedby_link = row.select_one(".gsc_a_ac")
        citedby_url = ""
        cites_id = []
        if citedby_link and citedby_link.get("href"):
            citedby_url = urljoin(SCHOLAR_BASE_URL, citedby_link.get("href"))
            cites_value = parse_qs(urlparse(citedby_url).query).get("cites", [""])[0]
            cites_id = [item for item in cites_value.split(",") if item]

        year = text_of(row.select_one(".gsc_a_y .gsc_a_h"))
        publications[author_pub_id] = {
            "container_type": "Publication",
            "source": "AUTHOR_PUBLICATION_ENTRY",
            "bib": {
                "title": text_of(title_link),
                "author": text_of(gray_lines[0]) if len(gray_lines) > 0 else "",
                "venue": text_of(gray_lines[1]) if len(gray_lines) > 1 else "",
                "pub_year": year,
            },
            "filled": False,
            "author_pub_id": author_pub_id,
            "num_citations": parse_int(text_of(citedby_link)),
            "citedby_url": citedby_url,
            "cites_id": cites_id,
        }

    return publications


def parse_author_profile(html, scholar_id):
    soup = BeautifulSoup(html, "html.parser")
    name_node = soup.select_one("#gsc_prf_in")
    if not name_node:
        title = text_of(soup.find("title"))
        raise RuntimeError(
            "Could not parse Google Scholar profile. "
            f"Expected #gsc_prf_in, got page title: {title!r}"
        )

    photo = soup.select_one("#gsc_prf_pup-img")
    affiliation = text_of(soup.select_one("#gsc_prf_i .gsc_prf_il"))
    email_text = text_of(soup.select_one("#gsc_prf_ivh"))
    email_domain = email_text.replace("Verified email at ", "@") if email_text else ""
    metrics = parse_metric_table(soup)

    return {
        "container_type": "Author",
        "filled": ["basics", "publications", "indices", "counts"],
        "scholar_id": scholar_id,
        "source": "AUTHOR_PROFILE_PAGE",
        "name": text_of(name_node),
        "url_picture": photo.get("src", "") if photo else "",
        "affiliation": affiliation,
        "interests": [text_of(item) for item in soup.select("#gsc_prf_int a")],
        "email_domain": email_domain,
        "citedby": metrics["citedby"],
        "citedby5y": metrics["citedby5y"],
        "hindex": metrics["hindex"],
        "hindex5y": metrics["hindex5y"],
        "i10index": metrics["i10index"],
        "i10index5y": metrics["i10index5y"],
        "updated": utc_now(),
        "publications": parse_publications(soup),
    }


def main():
    scholar_id = os.environ.get("GOOGLE_SCHOLAR_ID", DEFAULT_GOOGLE_SCHOLAR_ID)

    try:
        author = parse_author_profile(fetch_profile_html(scholar_id), scholar_id)
    except Exception as error:
        print(
            f"::warning::Could not refresh Google Scholar data: {error}. "
            "Falling back to the previous google-scholar-stats branch data.",
            file=sys.stderr,
        )
        author = fetch_previous_author()
        author["updated"] = utc_now()
        author["refresh_warning"] = str(error)

    print(json.dumps(author, indent=2, ensure_ascii=False))
    os.makedirs("results", exist_ok=True)

    with open("results/gs_data.json", "w", encoding="utf-8") as outfile:
        json.dump(author, outfile, ensure_ascii=False)

    shieldio_data = {
        "schemaVersion": 1,
        "label": "citations",
        "message": f"{author['citedby']}",
    }
    with open("results/gs_data_shieldsio.json", "w", encoding="utf-8") as outfile:
        json.dump(shieldio_data, outfile, ensure_ascii=False)


if __name__ == "__main__":
    main()
