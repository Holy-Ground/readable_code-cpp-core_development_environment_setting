#!/bin/bash

# Check if Homebrew is installed and install if not
./install_homebrew.sh

# Install Git
echo "Installing Git..."
brew install git

# Install Git CLI
echo "Installing Git CLI..."
brew install gh

# Verify installed versions
echo "Git version:"
git --version
echo "Git CLI version:"
gh --version

# Log in to GitHub
gh auth login
