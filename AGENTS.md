# Repository Guidelines

## Project Structure & Module Organization
- `n4k.py`: main Python CLI entry point (`main()`), handles URL parsing and article extraction.
- `n4k.sh`: legacy shell wrapper for virtualenv-based execution.
- `setup.sh`: bootstraps local development (`uv` install check + `uv tool install --editable .`).
- `pyproject.toml`: project metadata, dependencies, and script entry point (`n4k = "n4k:main"`).
- `README.md`: user-facing installation and usage documentation.
- No dedicated `tests/` directory yet; add new tests under `tests/` when introducing behavior changes.

## Build, Test, and Development Commands
- `./setup.sh`: preferred one-step local setup.
- `uv tool install --editable .`: install the `n4k` CLI as a local uv-managed tool.
- `uv tool update-shell`: ensure uv tool binaries are on `PATH`.
- `n4k <url>`: run the CLI after installing with `uv tool`.
- `./n4k.sh <url>`: optional legacy wrapper flow if you manage `.venv` manually.

## Coding Style & Naming Conventions
- Target Python `>=3.8`; keep code compatible across supported versions.
- Follow PEP 8: 4-space indentation, `snake_case` for functions/variables, concise function bodies.
- Keep CLI error messages clear and user-directed (for example, invalid args should print `Usage: n4k <url>`).
- Shell scripts should stay POSIX-friendly Bash with executable shebangs.

## Testing Guidelines
- Current repository has no automated test suite; contributors should add tests for new logic.
- Use `pytest` with files named `tests/test_*.py`.
- At minimum, validate argument handling, successful extraction path, and error path behavior.
- Until tests exist, include manual verification in PRs (example URL and observed output shape).

## Commit & Pull Request Guidelines
- Keep commits small and focused; existing history uses short, imperative summaries (for example, `Rename nk4 to n4k`).
- Prefer one logical change per commit.
- PRs should include:
  - What changed and why.
  - How it was validated (`./n4k.sh <url>`, test output, or both).
  - Linked issue (if applicable).
  - Sample output snippets when changing CLI output format.

## Security & Configuration Tips
- Do not commit extracted article content, credentials, or local `.venv` artifacts.
- Treat external URLs as untrusted input; preserve defensive error handling around network/download steps.
