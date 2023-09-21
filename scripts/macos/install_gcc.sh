#!/bin/bash

# Check if Homebrew is installed and install if not
./install_homebrew.sh

# Install GCC
echo "Installing GCC..."
brew install gcc

# Verify installed versions
echo "GCC version:"
gcc --version
