# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall CMake
if (Get-Command cmake -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling Clang and Clangd..."
  choco uninstall cmake -y
}
else {
  # Set environment variables (Adjust paths based on your installation directory)
  $env:path += ";C:\Program Files\cmake\bin"
}

# Install CMake using Chocolatey
Write-Host "Installing CMake..."
choco install cmake -y

# Verify CMake installation
if (Test-Path (Join-Path $env:ProgramFiles "CMake\bin\cmake.exe")) {
  Write-Host "CMake has been successfully installed."
} else {
  Write-Host "CMake installation failed. Please check the installation process for any errors."
}

# Verify installed versions
Write-Host "CMake Version:"
cmake --version
