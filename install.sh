#!/bin/bash

set -e

# Detect arch
ARCH=$(uname -m)
OS=$(uname -s | tr '[:upper:]' '[:lower:]')

echo "🔍 Detected OS: $OS"
echo "🔍 Detected ARCH: $ARCH"

BINARY_URL=""

if [[ "$OS" == "linux" && "$ARCH" == "x86_64" ]]; then
  BINARY_URL="https://example.com/hello-linux-x64"
elif [[ "$OS" == "linux" && "$ARCH" == "aarch64" ]]; then
  BINARY_URL="https://example.com/hello-linux-arm64"
elif [[ "$OS" == "linux" && "$ARCH" == "armv7l" ]]; then
  BINARY_URL="https://example.com/hello-linux-armv7"
elif [[ "$OS" == "darwin" && "$ARCH" == "x86_64" ]]; then
  BINARY_URL="https://example.com/hello-macos-x64"
elif [[ "$OS" == "darwin" && "$ARCH" == "arm64" ]]; then
  BINARY_URL="https://example.com/hello-macos-arm64"
else
  echo "❌ Unsupported platform: $OS-$ARCH"
  exit 1
fi

INSTALL_PATH="$HOME/.local/bin"
mkdir -p "$INSTALL_PATH"

echo "⬇️ Downloading binary..."
curl -L "$BINARY_URL" -o "$INSTALL_PATH/hello"
chmod +x "$INSTALL_PATH/hello"

echo "✅ Installed to $INSTALL_PATH/hello"

# Optional PATH message
if ! echo "$PATH" | grep -q "$INSTALL_PATH"; then
  echo "🔔 Add this line to your shell config (~/.bashrc or ~/.zshrc):"
  echo "export PATH=\"\$HOME/.local/bin:\$PATH\""
fi
