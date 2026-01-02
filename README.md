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

1. Create a virtual environment and install dependencies using uv:
   ```bash
   uv venv
   source .venv/bin/activate
   uv pip install -e .
   ```

2. Make the wrapper script executable:
   ```bash
   chmod +x n4k.sh
   ```

3. Create a symlink to make it available system-wide (requires sudo):
   ```bash
   sudo ln -s $(pwd)/n4k.sh /usr/local/bin/n4k
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