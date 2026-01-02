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

# Check for old venv directory and remove it
if [ -d "venv" ]; then
    echo "Found old 'venv' directory from pip installation."
    echo "Removing it to create new '.venv' with uv..."
    rm -rf venv
fi

# Create virtual environment and install dependencies with uv
if [ ! -d ".venv" ]; then
    echo "Creating virtual environment with uv..."
    uv venv
else
    echo "Virtual environment '.venv' already exists."
fi

echo "Installing dependencies..."
source .venv/bin/activate
uv pip install -e .

# Make wrapper script executable
echo "Making wrapper script executable..."
chmod +x n4k.sh

echo "Setup complete!"
echo ""
echo "To make n4k available system-wide, run:"
echo "sudo ln -s $(pwd)/n4k.sh /usr/local/bin/n4k"
echo ""
echo "Or add $(pwd) to your PATH and use ./n4k.sh"