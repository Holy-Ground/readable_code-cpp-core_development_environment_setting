# Check and install Chocolatey
./install_chocolatey.ps1

# Uninstall Clang and Clangd
if (Get-Command clang -ErrorAction SilentlyContinue) {
  Write-Host "Uninstalling Clang and Clangd..."
  choco uninstall llvm -y
}
else {
  # Set environment variables (Adjust paths based on your installation directory)
  $env:Path += ";C:\tools\mingw64\bin;C:\Program Files\LLVM\bin"
}

# Install Clang and Clangd
Write-Host "Installing Clang and Clangd..."
choco install llvm -y

# Verify installed versions
Write-Host "Clang Version:"
clang --version
