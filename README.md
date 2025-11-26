# N4K - Newspaper4K CLI Wrapper

A simple command-line wrapper for newspaper4k that extracts article text from URLs.

## Installation

1. Clone or download this repository
2. Run the setup script:
   ```bash
   ./setup.sh
   ```

Or manually:
1. Create a virtual environment and install dependencies:
   ```bash
   python -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   pip install -e .
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