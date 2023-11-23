#!/bin/bash

# Install necessary dependencies
./update_ubuntu.sh
sudo apt install -y build-essential

# Install Doxygen and graphviz
echo "Installing Doxygen..."
sudo apt install -y doxygen
sudo apt install -y doxygen-gui
sudo apt install -y graphviz

# Verify installed versions
echo "Doxygen version:"
doxygen --version
