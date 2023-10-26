#!/bin/bash

# Check if Homebrew is installed and install if not
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/undo/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi
