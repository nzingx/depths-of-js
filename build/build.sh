#!/bin/bash

mkdir -p dist

echo "📦 Building for Linux x64..."
pkg hello.js --targets node16-linux-x64 --output dist/hello-linux-x64

echo "📦 Building for Linux ARM64..."
pkg hello.js --targets node16-linux-arm64 --output dist/hello-linux-arm64

echo "📦 Building for macOS x64..."
pkg hello.js --targets node16-macos-x64 --output dist/hello-macos-x64

echo "📦 Building for macOS ARM64..."
pkg hello.js --targets node16-macos-arm64 --output dist/hello-macos-arm64

echo "✅ All builds complete. Check the dist/ folder."
