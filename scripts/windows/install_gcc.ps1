# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall GCC
if (Get-Command gcc -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling GCC..."
  choco uninstall mingw -y
}

# Install GCC
Write-Host "Installing GCC..."
choco install mingw -y

# Verify installed versions
Write-Host "GCC Version:"
gcc --version
