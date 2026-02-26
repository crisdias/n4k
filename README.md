# N4K - Newspaper4K CLI Wrapper

A simple command-line wrapper for newspaper4k that extracts article text from URLs.

## Installation

### Prerequisites

This project uses [uv](https://github.com/astral-sh/uv) for fast Python package management. If you don't have uv installed:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### Quick Setup

1. Clone or download this repository
2. Run the setup script:
   ```bash
   ./setup.sh
   ```

### Manual Setup

1. Install the CLI as a uv tool (editable mode for local development):
   ```bash
   uv tool install --editable .
   ```

2. Ensure uv tool binaries are available in your shell:
   ```bash
   uv tool update-shell
   ```

3. Restart your shell and run:
   ```bash
   n4k <url>
   ```

## Usage

```bash
n4k <url>
```

Example:
```bash
n4k https://www.example.com
```

This will output the extracted article metadata in YAML frontmatter format followed by the article text to stdout.

The output includes:
- Title
- URL
- Authors
- Publication date
- Top image URL
- Article text content
