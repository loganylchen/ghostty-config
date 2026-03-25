# Ghostty Configuration - Best Practices

A minimal, stable, and beautiful Ghostty terminal configuration.

## ✨ Features

- **Minimal & Stable** - Only tested, working configuration options
- **Beautiful Themes** - Catppuccin Mocha & Latte with auto dark/light mode
- **Cross-Platform** - Works on macOS and Linux
- **Smart Keybindings** - Intuitive shortcuts for splits, tabs, and more
- **Easy Setup** - One command installation

## 🚀 Quick Start

### Installation

```bash
# Clone the repository
git clone https://github.com/loganylchen/ghostty-config.git
cd ghostty-config

# Install
chmod +x install.sh
./install.sh

# Reload Ghostty
# Press Cmd+R (macOS) or Ctrl+R (Linux)
```

### Manual Installation

```bash
# Create directory
mkdir -p ~/.config/ghostty/themes

# Copy config
cp config ~/.config/ghostty/config

# Copy themes
cp themes/* ~/.config/ghostty/themes/

# Reload Ghostty
# Press Cmd+R or restart Ghostty
```

## 🎨 Themes

### Auto Dark/Light Mode

The configuration automatically switches between themes based on your system settings:

- **Dark Mode**: Catppuccin Mocha
- **Light Mode**: Catppuccin Latte

### Included Themes

- `catppuccin-mocha` - Dark theme (default for dark mode)
- `catppuccin-latte` - Light theme (default for light mode)
- `tokyo-night` - Cyberpunk aesthetic
- `nord` - Arctic colors
- `gruvbox` - Retro vibes
- `dracula` - Dark purple theme

### Switching Themes

```bash
# Edit config
nano ~/.config/ghostty/config

# Change theme line
theme = tokyo-night  # Single theme
# or
theme = dark:catppuccin-mocha, light:catppuccin-latte  # Auto switch
```

## ⌨️ Keybindings

### Split Panes

| Action | macOS | Linux |
|--------|-------|-------|
| Split Right | `Cmd+D` | `Ctrl+Shift+D` |
| Split Down | `Cmd+Shift+D` | `Ctrl+Shift+Alt+D` |
| Zoom Split | `Cmd+Shift+Enter` | `Ctrl+Shift+Enter` |
| Navigate Left | `Cmd+Left` | `Ctrl+Alt+Left` |
| Navigate Right | `Cmd+Right` | `Ctrl+Alt+Right` |
| Navigate Up | `Cmd+Up` | `Ctrl+Alt+Up` |
| Navigate Down | `Cmd+Down` | `Ctrl+Alt+Down` |

### Tabs

| Action | Key |
|--------|-----|
| New Tab | `Cmd+T` |
| Close Tab | `Cmd+W` |
| Next Tab | `Ctrl+Tab` |
| Previous Tab | `Ctrl+Shift+Tab` |

### Font Size

| Action | Key |
|--------|-----|
| Increase | `Cmd+Plus` / `Ctrl+Plus` |
| Decrease | `Cmd+Minus` / `Ctrl+Minus` |
| Reset | `Cmd+0` / `Ctrl+0` |

### System

| Action | Key |
|--------|-----|
| Reload Config | `Cmd+R` / `Ctrl+R` |
| Fullscreen | `F11` |

## 📝 Configuration

### Current Settings

```conf
font-family = "JetBrains Mono Nerd Font"
font-size = 14

window-padding-x = 8
window-padding-y = 8
background-opacity = 0.96

scrollback-limit = 10000
window-save-state = always

theme = dark:catppuccin-mocha, light:catppuccin-latte
cursor-style = bar
```

### Customization

Edit `~/.config/ghostty/config`:

```bash
nano ~/.config/ghostty/config
```

## 🔧 CLI Commands

```bash
# List available fonts
ghostty +list-fonts

# Show current config
ghostty +show-config

# Show default config with docs
ghostty +show-config --default --docs

# List themes
ls ~/.config/ghostty/themes/
```

## 💡 Tips

### 1. Font Size Adjustment
Quickly adjust for presentations:
- `Cmd+Plus` to increase
- `Cmd+Minus` to decrease

### 2. Split Workflow
Perfect for monitoring logs while coding:
```
┌─────────────┬─────────────┐
│   Editor    │    Logs     │
├─────────────┴─────────────┤
│        Terminal           │
└───────────────────────────┘
```

### 3. Quick Reload
No restart needed - just press `Cmd+R` or `Ctrl+R`!

### 4. Project-Specific Configs
Create `.ghostty/config` in your project directory:
```bash
cd ~/projects/myproject
mkdir -p .ghostty
echo "font-size = 16" > .ghostty/config
```

## 🐛 Troubleshooting

### Config not reloading
```bash
# Check syntax
ghostty +show-config

# Restart Ghostty
```

### Theme not found
```bash
# Verify theme file exists
ls ~/.config/ghostty/themes/

# Theme files should not have .conf extension
# Correct: catppuccin-mocha
# Wrong: catppuccin-mocha.conf
```

### Font not rendering
```bash
# Check available fonts
ghostty +list-fonts | grep "JetBrains"

# Install JetBrains Mono Nerd Font
# Download from: https://github.com/ryanoasis/nerd-fonts/releases
```

## 📚 Resources

- **Official Docs:** https://ghostty.org/docs
- **Config Reference:** https://ghostty.org/docs/config/reference
- **GitHub:** https://github.com/ghostty-org/ghostty
- **Community:** https://discord.gg/ghostty

## 🤝 Contributing

Found a bug or have suggestions?

1. Fork this repository
2. Create your feature branch
3. Submit a pull request

See [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## 📝 License

MIT License - Feel free to use, modify, and share!

## 👤 Author

**Logan CHEN**
- GitHub: [@loganylchen](https://github.com/loganylchen)
- Email: yuelong.chen.btr@gmail.com

---

**Happy Terminal-ing! 🚀**

If this config helps you, consider giving it a ⭐!
