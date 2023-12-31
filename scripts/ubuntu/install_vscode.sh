#!/bin/bash

# Install necessary dependencies
./update_ubuntu.sh
sudo apt -y install software-properties-common apt-transport-https wget

# Install VSCode
echo "Installing VSCode..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install -y code

# Verify installed versions
echo "VSCode version:"
code --version
