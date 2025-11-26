#!/bin/bash
# Setup script for NK4

echo "Setting up NK4..."

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
chmod +x nk4.sh

echo "Setup complete!"
echo ""
echo "To make nk4 available system-wide, run:"
echo "sudo ln -s $(pwd)/nk4.sh /usr/local/bin/nk4"
echo ""
echo "Or add $(pwd) to your PATH and use ./nk4.sh"