# Ghostty Configuration - Best Practices

A carefully crafted Ghostty terminal configuration for maximum productivity and aesthetics.

## ✨ Features

- **Cross-Platform** - Works on macOS and Linux
- **Beautiful Themes** - Catppuccin Mocha & Latte (plus more)
- **Optimized for Developers** - Clean keybindings and productivity tools
- **Performance First** - GPU acceleration, smooth scrolling
- **Smart Defaults** - No complex setup required

### 🆕 New in v1.1 (Enhanced)
- **Quick Terminal** - iTerm2-style hotkey window
- **Clipboard Protection** - Security for multi-line paste
- **Command Notifications** - Get notified when commands finish
- **Split Pane Zoom** - Maximize splits temporarily
- **Background Blur** - macOS frosted glass effect
- **Unicode Optimization** - Better CJK/emoji rendering
- **Minimum Contrast** - Improved readability
- **Font Thicken** - Bolder, clearer text

See [WHATS-NEW.md](WHATS-NEW.md) for details!

## 🚀 Quick Start

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/loganylchen/ghostty-config.git
cd ghostty-config
```

2. **Run the installer:**
```bash
chmod +x install.sh
./install.sh
```

3. **Reload Ghostty:**
- Press `Cmd+R` (macOS) or `Ctrl+R` (Linux)
- Or press `Ctrl+Shift+,` (Linux) or `Cmd+Shift+,` (macOS)

### Manual Installation

```bash
# Create directory
mkdir -p ~/.config/ghostty

# Copy config
cp config ~/.config/ghostty/config

# Copy themes
cp -r themes/* ~/.config/ghostty/themes/

# Copy configs
cp -r configs/* ~/.config/ghostty/configs/

# Make scripts executable
chmod +x switch-theme.sh

# Switch to a theme (optional)
./switch-theme.sh catppuccin-mocha
```

## 🎨 Themes

### Included Themes

| Theme | Description |
|-------|-------------|
| **catppuccin-mocha** | 🌙 Dark theme, default |
| **catppuccin-latte** | ☀️ Light theme |
| **tokyo-night** | 🌃 Cyberpunk aesthetic |
| **nord** | ❄️ Arctic colors |
| **gruvbox** | 🍔 Retro vibes |
| **dracula** | 🧛 Dark purple theme |

### Switching Themes

```bash
cd ghostty-config

# Switch themes
./switch-theme.sh catppuccin-mocha
./switch-theme.sh tokyo-night
./switch-theme.sh nord
```

Or manually:
```bash
cp ~/.config/ghostty/themes/tokyo-night.conf ~/.config/ghostty/theme.conf
```

## ⌨️ Keybindings

### Split Panes (MacOS: `Cmd`, Linux: `Ctrl`)

| Action | Key |
|--------|-----|
| Split Right | `Cmd+D` / `Ctrl+Shift+D` |
| Split Down | `Cmd+Shift+D` |
| Focus Left | `Cmd+Left` |
| Focus Right | `Cmd+Right` |
| Focus Up | `Cmd+Up` |
| Focus Down | `Cmd+Down` |
| Close Surface | `Cmd+W` / `Ctrl+Shift+W` |

### Tabs

| Action | Key |
|--------|-----|
| New Tab | `Cmd+T` / `Ctrl+Shift+T` |
| Close Tab | `Cmd+W` / `Ctrl+Shift+W` |
| Next Tab | `Ctrl+Tab` |
| Previous Tab | `Ctrl+Shift+Tab` |

### Font Size

| Action | Key |
|--------|-----|
| Increase | `Cmd+=` / `Ctrl+=` |
| Decrease | `Cmd+-` / `Ctrl+-` |
| Reset | `Cmd+0` / `Ctrl+0` |

### System

| Action | Key |
|--------|-----|
| Reload Config | `Cmd+R` / `Ctrl+R` |
| Fullscreen | `Cmd+Shift+Enter` / `F11` |
| Search | `Cmd+Shift+F` |

## 🔧 Configuration

### Specialized Configs

```bash
# Programming mode (larger font, more scrollback)
echo "config-file = ~/.config/ghostty/configs/programming.conf" >> ~/.config/ghostty/config

# Writing mode (better for docs)
echo "config-file = ~/.config/ghostty/configs/writing.conf" >> ~/.config/ghostty/config

# Presentation mode (large fonts for demos)
echo "config-file = ~/.config/ghostty/configs/presentation.conf" >> ~/.config/ghostty/config
```

### Platform-Specific

The main config includes platform-specific blocks:

**macOS:** `[platform=macos]` - Option=Alt mapping, display-p3 colors
**Linux:** `[platform=linux]` - OpenGL rendering, input method support

### Customization

Edit `~/.config/ghostty/config` directly:
```bash
nano ~/.config/ghostty/config
```

## 📊 Config Options

### Font & Rendering

```conf
font-family = "JetBrains Mono Nerd Font"
font-size = 14
font-ligatures = true
antialiasing = subpixel
max-frame-rate = 120
```

### Appearance

```conf
background-opacity = 0.96
line-height = 1.2
window-padding-x = 8
window-padding-y = 8
```

### Behavior

```conf
select-to-copy = true
scrollback-lines = 10000
window-save-state = always
bell = none
```

## 💡 Tips & Tricks

### 1. Font Size Adjustment
Quickly adjust for presentations:
- `Cmd+=` to increase
- `Cmd+-` to decrease
- `Cmd+0` to reset

### 2. Split Workflow
Perfect for monitoring logs while coding:
```
┌─────────────┬─────────────┐
│             │             │
│   Editor    │    Logs     │
│             │             │
├─────────────┴─────────────┤
│        Terminal           │
└───────────────────────────┘
```

### 3. Project-Specific Configs
Create `.ghostty/config` in your project directory:
```bash
cd ~/projects/myproject
mkdir -p .ghostty
echo "font-size = 16" > .ghostty/config
echo "window-title = MyProject" >> .ghostty/config
```

### 4. Quick Config Reload
No restart needed - just press `Cmd+R` or `Ctrl+R`!

## 🛠️ CLI Commands

```bash
# List available fonts
ghostty +list-fonts

# List available themes
ghostty +list-themes

# Show current config
ghostty +show-config

# Show default config with docs
ghostty +show-config --default --docs

# Launch with custom settings
ghostty --font-size=16 --theme=dark
```

## 🎯 Custom Fonts

Use JetBrains Mono Nerd Font (included in config) or customize:

```bash
# Check available fonts
ghostty +list-fonts | grep "JetBrains"

# Customize in config
echo 'font-family = "Your Font Name"' >> ~/.config/ghostty/config
```

## 🐛 Troubleshooting

### Config not reloading
```bash
# Check syntax
ghostty +show-config

# Restart Ghostty
```

### Theme not showing
```bash
# Verify theme file exists
ls ~/.config/ghostty/themes/

# Switch theme manually
./switch-theme.sh [theme-name]
```

### Font rendering issues
```bash
# Reinstall JetBrains Mono Nerd Font
# Download from: https://github.com/ryanoasis/nerd-fonts/releases
```

## 📚 Resources

- **Official Docs:** https://ghostty.org/docs
- **Config Reference:** https://ghostty.org/docs/config/reference
- **GitHub:** https://github.com/ghostty-org/ghostty
- **Community:** https://discord.gg/ghostty

## 🤝 Contributing

Found a better configuration? Have suggestions?

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
