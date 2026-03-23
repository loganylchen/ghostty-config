# Ghostty Quick Reference Card

## Installation

```bash
# Clone and install
git clone https://github.com/loganylchen/ghostty-config.git
cd ghostty-config
./install.sh
```

## Essential Keybindings

### Splits
| Action | Key |
|--------|-----|
| Split Right | `Ctrl+Shift+D` |
| Split Down | `Ctrl+Shift+E` |
| Navigate | `Ctrl+Shift+Arrow` |
| Resize | `Ctrl+Shift+Alt+Arrow` |
| Close | `Ctrl+Shift+W` |

### Tabs
| Action | Key |
|--------|-----|
| New Tab | `Ctrl+Shift+T` |
| Close Tab | `Ctrl+Shift+Q` |
| Next Tab | `Ctrl+Shift+]` |
| Prev Tab | `Ctrl+Shift+[` |

### Font
| Action | Key |
|--------|-----|
| Increase | `Ctrl+Plus` |
| Decrease | `Ctrl+Minus` |
| Reset | `Ctrl+0` |

### Other
| Action | Key |
|--------|-----|
| Copy | `Ctrl+Shift+C` |
| Paste | `Ctrl+Shift+V` |
| Search | `Ctrl+Shift+F` |
| Fullscreen | `Super+Enter` |
| Reload Config | `Ctrl+Shift+,` |

## Themes

```bash
# Switch theme
cd ghostty-config
./switch-theme.sh tokyo-night
./switch-theme.sh nord
./switch-theme.sh gruvbox
./switch-theme.sh dracula
```

## CLI Commands

```bash
# List fonts
ghostty +list-fonts

# Show current config
ghostty +show-config

# Show default config with docs
ghostty +show-config --default --docs

# Launch with custom config
ghostty --font-size=14 --theme=light
```

## Config Locations

- Linux: `~/.config/ghostty/config`
- macOS: `~/Library/Application Support/com.mitchellh.ghostty/config`

## Specialized Configs

```bash
# Programming (larger font, more scrollback)
echo "config-file = ~/.config/ghostty/configs/programming.conf" >> ~/.config/ghostty/config

# Writing (better for docs)
echo "config-file = ~/.config/ghostty/configs/writing.conf" >> ~/.config/ghostty/config

# Presentation (large fonts for demos)
echo "config-file = ~/.config/ghostty/configs/presentation.conf" >> ~/.config/ghostty/config
```

## Tips

1. **Project-specific configs**: Create `.ghostty/config` in your project
2. **Quick font adjust**: Use `Ctrl+Plus/Minus` for presentations
3. **Split workflow**: Perfect for monitoring logs while coding
4. **Reload config**: No restart needed with `Ctrl+Shift+,`

## Resources

- 📖 Docs: https://ghostty.org/docs
- ⚙️ Config Ref: https://ghostty.org/docs/config/reference
- 🐙 GitHub: https://github.com/loganylchen/ghostty-config
- 💬 Community: https://discord.gg/ghostty
