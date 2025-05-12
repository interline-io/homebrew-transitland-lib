#!/bin/bash

# Check if version argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <version>"
    echo "Example: $0 v1.1.2"
    exit 1
fi

VERSION=$1
BASE_URL="https://github.com/interline-io/transitland-lib/releases/download/${VERSION}"

# Create a temporary directory
TEMP_DIR=$(mktemp -d)
cd "$TEMP_DIR"

echo "Downloading files for version ${VERSION}..."

# Download and calculate hash for macOS Intel
echo "macOS Intel:"
curl -L "${BASE_URL}/transitland-macos-intel.zip" -o transitland-macos-intel.zip
sha256sum transitland-macos-intel.zip

# Download and calculate hash for macOS Apple Silicon
echo -e "\nmacOS Apple Silicon:"
curl -L "${BASE_URL}/transitland-macos-apple.zip" -o transitland-macos-apple.zip
sha256sum transitland-macos-apple.zip

# Download and calculate hash for Linux
echo -e "\nLinux:"
curl -L "${BASE_URL}/transitland-linux" -o transitland-linux
sha256sum transitland-linux

# Clean up
cd - > /dev/null
rm -rf "$TEMP_DIR"
