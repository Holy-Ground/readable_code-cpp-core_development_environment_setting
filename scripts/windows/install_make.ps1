# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall Make
if (Get-Command make -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling Clang and Clangd..."
  choco uninstall make -y
}

# Install Make using Chocolatey
Write-Host "Installing Make..."
choco install make -y

# Verify installed versions
Write-Host "Make Version:"
make --version
