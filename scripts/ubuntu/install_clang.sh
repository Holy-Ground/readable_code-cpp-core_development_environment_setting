#!/bin/bash

# Install necessary dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential

# Install Clang and Clangd
echo "Installing Clang and Clangd..."
sudo bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"
sudo apt install -y clang clangd

# Verify installed versions
echo "Clang version:"
clang --version
echo "Clangd version:"
clangd --version
