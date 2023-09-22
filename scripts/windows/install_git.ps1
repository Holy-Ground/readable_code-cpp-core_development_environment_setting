# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall Git
if (Get-Command git -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling Git..."
  choco uninstall git -y
}
else {
  # Set environment variables (Adjust paths based on your installation directory)
  $env:path += ";C:\Program Files\Git\bin"
}

# Install Git
Write-Host "Installing Git..."
choco install git -y

# Uninstall GitHub CLI
if (Get-Command gh -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling GitHub CLI..."
  choco uninstall gh -y
}
else {
  # Set environment variables (Adjust paths based on your installation directory)
  $env:path += ";C:\Program Files\GitHub CLI"
}

# Install GitHub CLI
choco install gh -y

# Verify installed versions
echo "Git version:"
git --version
echo "Git CLI version:"
gh --version

# Log in to GitHub
gh auth login
