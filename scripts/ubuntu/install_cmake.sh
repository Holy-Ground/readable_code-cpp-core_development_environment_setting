#!/bin/bash

# Install necessary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

# Install CMake
echo "Installing CMake..."
sudo apt install -y cmake

# Verify installed versions
cmake --version
