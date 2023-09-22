#!/bin/bash

# Install necessary dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y curl

# Install Git
echo "Installing Git..."
sudo apt install -y git

# Install Git CLI
echo "Installing Git CLI..."
sudo apt install -y gh

# Verify installed versions
echo "Git version:"
git --version
echo "Git CLI version:"
gh --version

# Log in to GitHub
gh auth login
