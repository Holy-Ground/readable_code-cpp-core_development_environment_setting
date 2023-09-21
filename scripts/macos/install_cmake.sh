#!/bin/bash

# Check if Homebrew is installed and install if not
./install_homebrew.sh

# Install CMake
echo "Installing CMake..."
brew install cmake

# Verify installed versions
cmake --version
