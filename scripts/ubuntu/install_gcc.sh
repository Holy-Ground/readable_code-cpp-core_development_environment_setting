#!/bin/bash

# Install necessary dependencies
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y build-essential

# Install GCC
echo "Installing GCC..."
sudo apt install -y gcc

# Verify installed versions
echo "GCC version:"
gcc --version
