#!/bin/bash

# Theme switcher for Ghostty
# Usage: ./switch-theme.sh [theme-name]

THEMES_DIR="$HOME/.config/ghostty/themes"
CONFIG_FILE="$HOME/.config/ghostty/theme.conf"
MAIN_CONFIG="$HOME/.config/ghostty/config"

if [ -z "$1" ]; then
    echo "Available themes:"
    ls -1 "$THEMES_DIR" | sed 's/.conf$//'
    echo ""
    echo "Usage: $0 <theme-name>"
    exit 1
fi

THEME="$1"
THEME_FILE="$THEMES_DIR/${THEME}.conf"

if [ ! -f "$THEME_FILE" ]; then
    echo "Error: Theme '$THEME' not found in $THEMES_DIR"
    echo "Available themes:"
    ls -1 "$THEMES_DIR" | sed 's/.conf$//'
    exit 1
fi

# Create or update theme.conf
cp "$THEME_FILE" "$CONFIG_FILE"

# Add theme include to main config if not already present
if ! grep -q "config-file.*theme.conf" "$MAIN_CONFIG" 2>/dev/null; then
    echo "" >> "$MAIN_CONFIG"
    echo "# Theme" >> "$MAIN_CONFIG"
    echo "config-file = $CONFIG_FILE" >> "$MAIN_CONFIG"
fi

echo "✓ Switched to '$THEME' theme"
echo "Reload Ghostty with Ctrl+Shift+, (Linux) or Cmd+Shift+, (macOS)"
