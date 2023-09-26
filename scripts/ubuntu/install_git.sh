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
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

# Verify installed versions
echo "Git version:"
git --version
echo "Git CLI version:"
gh --version

# Log in to GitHub
gh auth login
