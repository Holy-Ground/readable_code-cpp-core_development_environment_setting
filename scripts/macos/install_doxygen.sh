#!/bin/bash

# Check if Homebrew is installed and install if not
./install_homebrew.sh

# Install Doxygen and graphviz
echo "Installing Doxygen..."
brew install --cask doxygen
brew link doxygen
brew install graphviz

# Verify installed versions
echo "Doxygen version:"
doxygen --version
