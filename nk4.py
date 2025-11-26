#!/usr/bin/env python3
import sys
from newspaper import Article


def main():
    if len(sys.argv) != 2 or sys.argv[1] in ["-h", "--help"]:
        print("Usage: nk4 <url>", file=sys.stderr)
        sys.exit(1)

    url = sys.argv[1]

    try:
        article = Article(url)
        article.download()
        article.parse()
        print(article.text)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
