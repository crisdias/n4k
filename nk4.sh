#!/bin/bash
# Wrapper script for nk4 command
SCRIPT_DIR="$(cd "$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")" && pwd)"
source "$SCRIPT_DIR/venv/bin/activate"
exec "$SCRIPT_DIR/venv/bin/nk4" "$@"