#!/bin/bash

# Ghostty Config Installation Script
# Author: Logan CHEN
# GitHub: https://github.com/loganylchen/ghostty-config

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Print colored message
print_msg() {
    echo -e "${2}${1}${NC}"
}

# Check if Ghostty is installed
if ! command -v ghostty &> /dev/null; then
    print_msg "Error: Ghostty is not installed!" "$RED"
    print_msg "Please install Ghostty first: https://ghostty.org/docs/install" "$YELLOW"
    exit 1
fi

print_msg "Ghostty detected! ✓" "$GREEN"

# Backup existing config
CONFIG_DIR="$HOME/.config/ghostty"
CONFIG_FILE="$CONFIG_DIR/config"

if [ -f "$CONFIG_FILE" ]; then
    BACKUP_FILE="$CONFIG_FILE.backup.$(date +%Y%m%d_%H%M%S)"
    print_msg "Backing up existing config to: $BACKUP_FILE" "$YELLOW"
    cp "$CONFIG_FILE" "$BACKUP_FILE"
fi

# Create config directory
mkdir -p "$CONFIG_DIR"
mkdir -p "$CONFIG_DIR/themes"
mkdir -p "$CONFIG_DIR/configs"

# Copy main config
print_msg "Installing main configuration..." "$GREEN"
cp config "$CONFIG_FILE"

# Copy themes
print_msg "Installing themes..." "$GREEN"
cp -r themes/* "$CONFIG_DIR/themes/" 2>/dev/null || true

# Copy configs
print_msg "Installing additional configs..." "$GREEN"
cp -r configs/* "$CONFIG_DIR/configs/" 2>/dev/null || true

print_msg "\n✓ Installation complete!" "$GREEN"
print_msg "\nNext steps:" "$YELLOW"
echo "1. Reload Ghostty with: Ctrl+Shift+, (Linux) or Cmd+Shift+, (macOS)"
echo "2. Or restart Ghostty"
echo ""
echo "To customize:"
echo "  - Edit: ~/.config/ghostty/config"
echo "  - Try themes: cp ~/.config/ghostty/themes/tokyo-night.conf ~/.config/ghostty/theme.conf"
echo "  - View docs: https://ghostty.org/docs/config"
