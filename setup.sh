#!/bin/bash
# Setup script for N4K

echo "Setting up N4K..."

# Create virtual environment if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python -m venv venv
fi

# Activate virtual environment and install dependencies
echo "Installing dependencies..."
source venv/bin/activate
pip install -r requirements.txt
pip install -e .

# Make wrapper script executable
echo "Making wrapper script executable..."
chmod +x n4k.sh

echo "Setup complete!"
echo ""
echo "To make n4k available system-wide, run:"
echo "sudo ln -s $(pwd)/n4k.sh /usr/local/bin/n4k"
echo ""
echo "Or add $(pwd) to your PATH and use ./n4k.sh"