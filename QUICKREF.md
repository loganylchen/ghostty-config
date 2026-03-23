# Ghostty Quick Reference Card

## Installation

```bash
# Clone and install
git clone https://github.com/loganylchen/ghostty-config.git
cd ghostty-config
./install.sh
```

## Essential Keybindings

### Splits (MacOS: `Cmd`, Linux: `Ctrl`)

| Action | Key |
|--------|-----|
| Split Right | `Cmd+D` / `Ctrl+Shift+D` |
| Split Down | `Cmd+Shift+D` |
| Focus Left | `Cmd+Left` |
| Focus Right | `Cmd+Right` |
| Focus Up | `Cmd+Up` |
| Focus Down | `Cmd+Down` |
| Resize | Use arrow keys or `Ctrl+Shift+Alt+Arrow` |
| Close | `Cmd+W` / `Ctrl+Shift+W` |

### Tabs

| Action | Key |
|--------|-----|
| New Tab | `Cmd+T` / `Ctrl+Shift+T` |
| Close Tab | `Cmd+W` / `Ctrl+Shift+W` |
| Next Tab | `Ctrl+Tab` |
| Previous Tab | `Ctrl+Shift+Tab` |

### Font

| Action | Key |
|--------|-----|
| Increase | `Cmd+=` / `Ctrl+=` |
| Decrease | `Cmd+-` / `Ctrl+-` |
| Reset | `Cmd+0` / `Ctrl+0` |

### System

| Action | Key |
|--------|-----|
| Reload Config | `Cmd+R` / `Ctrl+R` ⭐ |
| Fullscreen | `Cmd+Shift+Enter` / `F11` |
| Search | `Cmd+Shift+F` |
| Copy | `Ctrl+Shift+C` |
| Paste | `Ctrl+Shift+V` |

## Themes

```bash
# Switch theme
cd ghostty-config
./switch-theme.sh catppuccin-mocha
./switch-theme.sh tokyo-night
./switch-theme.sh nord
```

## CLI Commands

```bash
# List fonts
ghostty +list-fonts

# List themes
ghostty +list-themes

# Show current config
ghostty +show-config

# Show default config with docs
ghostty +show-config --default --docs

# Launch with custom config
ghostty --font-size=16 --theme=light
```

## Platform Differences

| Feature | macOS | Linux |
|---------|-------|-------|
| Option Key | `Option` acts as `Alt` (for Vim/tmux) | `Alt` works normally |
| Cmd Key | `Cmd` acts as `Super` (Win) | `Ctrl` is default |
| Input Method | Native | Use `gtk-im-module` |
| Rendering | Quartz | OpenGL |

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

1. **Quick font adjust:** Use `Cmd+=/=-` for presentations
2. **Split workflow:** Perfect for monitoring logs while coding
3. **Project configs:** Create `.ghostty/config` in your project
4. **Reload:** No restart needed with `Cmd+R` / `Ctrl+R`

## Config Location

- **Linux:** `~/.config/ghostty/config`
- **macOS:** `~/.config/ghostty/config` (XDG path preferred)

## Resources

- 📖 Docs: https://ghostty.org/docs
- ⚙️ Config Ref: https://ghostty.org/docs/config/reference
- 🐙 GitHub: https://github.com/loganylchen/ghostty-config
- 🎨 Themes: https://github.com/catppuccin/catppuccin
