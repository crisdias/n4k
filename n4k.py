#!/usr/bin/env python3
import sys
from newspaper import Article


def main():
    if len(sys.argv) != 2 or sys.argv[1] in ["-h", "--help"]:
        print("Usage: n4k <url>", file=sys.stderr)
        sys.exit(1)

    url = sys.argv[1]

    try:
        article = Article(url)
        article.download()
        article.parse()

        # Print frontmatter
        print("---")
        print(f"title: {article.title or 'N/A'}")
        print(f"url: {url}")
        print(f"authors: {', '.join(article.authors) if article.authors else 'N/A'}")
        print(f"publish_date: {article.publish_date or 'N/A'}")
        print(f"top_image: {article.top_image or 'N/A'}")
        print("---")
        print()

        # Print article text
        print(article.text)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
