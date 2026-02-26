#!/bin/bash
# Setup script for N4K

echo "Setting up N4K..."

# Check if uv is installed
if ! command -v uv &> /dev/null; then
    echo "uv is not installed. Installing uv..."
    curl -LsSf https://astral.sh/uv/install.sh | sh
    echo "Please restart your shell or run: source $HOME/.cargo/env"
    exit 1
fi

echo "Installing n4k as a uv tool..."
uv tool install --editable . --force

echo "Ensuring uv tool directory is on PATH..."
uv tool update-shell

echo "Setup complete!"
echo ""
echo "If this is your first uv tool install, restart your shell (or source your shell profile)."
echo "Then run:"
echo "n4k <url>"
