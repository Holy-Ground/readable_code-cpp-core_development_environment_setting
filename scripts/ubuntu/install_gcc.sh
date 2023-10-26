#!/bin/bash

# Install necessary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

# Install GCC
echo "Installing GCC..."
sudo apt install -y gcc

# Verify installed versions
echo "GCC version:"
gcc --version
