#!/bin/bash
# Wrapper script for n4k command
SCRIPT_DIR="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd)"
source "$SCRIPT_DIR/.venv/bin/activate"
exec "$SCRIPT_DIR/.venv/bin/n4k" "$@"