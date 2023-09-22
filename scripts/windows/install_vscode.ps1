# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall VSCode
if (Get-Command code -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling VSCode..."
  choco uninstall vscode -y
}
else {
  # Set environment variables (Adjust paths based on your installation directory)
  $env:Path += "C:\Program Files\Microsoft VS Code\"
}

# Install VSCode
Write-Host "Installing VSCode..."
choco install vscode -y

