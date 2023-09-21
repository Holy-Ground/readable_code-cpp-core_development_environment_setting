#!/bin/bash

# Check if Homebrew is installed and install if not
./install_homebrew.sh

# Install Clang and Clangd
echo "Installing Clang and Clangd..."
brew install llvm

# Verify installed versions
echo "Clang version:"
clang --version
echo "Clangd version:"
clangd --version
