# Ghostty Configuration - Best Practices

A carefully crafted Ghostty terminal configuration for maximum productivity and aesthetics.

## Features

✨ **Optimized for Developers**
- Clean and modern color scheme (One Dark inspired)
- JetBrains Mono font with proper sizing
- Smart keybindings for workflow efficiency

🚀 **Performance First**
- GPU acceleration enabled
- Optimized scrolling and rendering
- Minimal resource usage

🎨 **Beautiful & Functional**
- Carefully selected color palette
- Proper padding and spacing
- Readable fonts for long coding sessions

⚡ **Productivity Boosters**
- Intuitive split panes management
- Quick font size adjustment
- Smart copy/paste behavior

## Quick Start

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/loganylchen/ghostty-config.git
cd ghostty-config
```

2. **Backup your existing config (if any):**
```bash
mkdir -p ~/.config/ghostty
[ -f ~/.config/ghostty/config ] && mv ~/.config/ghostty/config ~/.config/ghostty/config.backup
```

3. **Install the configuration:**
```bash
cp config ~/.config/ghostty/config
```

4. **Reload Ghostty:**
- Press `Ctrl+Shift+,` (Linux) or `Cmd+Shift+,` (macOS)
- Or restart Ghostty

## Configuration Options

### Basic Setup
The main configuration file (`config`) contains sensible defaults that work great out of the box.

### Advanced Customization
Check the `configs/` directory for specialized configurations:

- `programming.conf` - Optimized for coding
- `writing.conf` - Better for documentation and writing
- `presentation.conf` - Large fonts for demos

To use them:
```bash
# Include in your main config
echo "config-file = ~/.config/ghostty/programming.conf" >> ~/.config/ghostty/config
```

## Key Bindings

| Action | Linux | macOS |
|--------|-------|-------|
| Split Right | `Ctrl+Shift+D` | `Cmd+Shift+D` |
| Split Down | `Ctrl+Shift+E` | `Cmd+Shift+E` |
| Navigate Splits | `Ctrl+Shift+Arrow` | `Cmd+Shift+Arrow` |
| Resize Splits | `Ctrl+Shift+Alt+Arrow` | `Cmd+Shift+Alt+Arrow` |
| Close Split | `Ctrl+Shift+W` | `Cmd+Shift+W` |
| Increase Font | `Ctrl+Plus` | `Cmd+Plus` |
| Decrease Font | `Ctrl+Minus` | `Cmd+Minus` |
| Reset Font | `Ctrl+0` | `Cmd+0` |
| Copy | `Ctrl+Shift+C` | `Cmd+Shift+C` |
| Paste | `Ctrl+Shift+V` | `Cmd+Shift+V` |
| Search | `Ctrl+Shift+F` | `Cmd+Shift+F` |
| Fullscreen | `Super+Enter` | `Cmd+Enter` |
| Reload Config | `Ctrl+Shift+,` | `Cmd+Shift+,` |

## Themes

### Included Themes

1. **One Dark** (default) - Inspired by Atom's One Dark
2. **Tokyo Night** - A beautiful dark theme
3. **Nord** - Arctic, bluish color palette
4. **Gruvbox** - Retro groove color scheme
5. **Dracula** - Dark theme with purple accents

To switch themes:
```bash
# Copy your preferred theme
cp themes/tokyo-night.conf ~/.config/ghostty/theme.conf

# Add to main config
echo "config-file = ~/.config/ghostty/theme.conf" >> ~/.config/ghostty/config
```

## Color Schemes

### Current: One Dark
```
Background: #1e2127
Foreground: #abb2bf
Cursor:     #528bff
Selection:  #3e4451

Black:      #1e2127    #5c6370
Red:        #e06c75    #e06c75
Green:      #98c379    #98c379
Yellow:     #d19a66    #d19a66
Blue:       #61afef    #61afef
Magenta:    #c678dd    #c678dd
Cyan:       #56b6c2    #56b6c2
White:      #abb2bf    #ffffff
```

## Tips & Tricks

### 1. Project-specific Configurations
Create a `.ghostty/config` file in your project directory:
```bash
cd ~/projects/myproject
mkdir -p .ghostty
echo "background = 1a1b26" > .ghostty/config
echo "window-title = MyProject" >> .ghostty/config
```

### 2. Dynamic Font Sizing
Quickly adjust font size for presentations or screen sharing:
- `Ctrl+Plus` to increase
- `Ctrl+Minus` to decrease
- `Ctrl+0` to reset

### 3. Split Pane Workflow
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

### 4. Profile Management
Use different configs for different purposes:
```bash
# Work profile
ghostty --config-file=~/.config/ghostty/profiles/work.conf

# Personal profile
ghostty --config-file=~/.config/ghostty/profiles/personal.conf
```

### 5. Performance Tips
```conf
# For high-refresh-rate monitors (144Hz+)
adjust-cell-height = 0
adjust-cell-width = 0

# Reduce motion if preferred
cursor-style-blink = false
```

## Customization

### Adding Custom Fonts
```bash
# List available fonts
ghostty +list-fonts

# Add to config
echo "font-family = Your Font Name" >> ~/.config/ghostty/config
```

### Creating Custom Themes
1. Copy an existing theme from `themes/`
2. Modify the colors
3. Include in your main config

Example:
```conf
# My custom theme
background = 282c34
foreground = abb2bf
cursor-color = 528bff
# ... more colors
```

## Troubleshooting

### Font not rendering correctly
```bash
# Check available fonts
ghostty +list-fonts | grep -i "your font"

# Verify font is installed
fc-list | grep -i "your font"
```

### Config not reloading
- Check syntax with: `ghostty +show-config`
- Look for errors in console output
- Ensure no typos in key names

### Performance issues
```conf
# Try these settings
gpu-renderer = auto
scrollback-limit = 5000
```

## Resources

- [Official Documentation](https://ghostty.org/docs)
- [Configuration Reference](https://ghostty.org/docs/config/reference)
- [GitHub Repository](https://github.com/ghostty-org/ghostty)
- [Community Configs](https://github.com/search?q=path%3Aghostty%2Fconfig&type=code)

## Contributing

Found a better configuration? Have suggestions?

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/amazing-config`)
3. Commit your changes (`git commit -m 'Add amazing config'`)
4. Push to the branch (`git push origin feature/amazing-config`)
5. Open a Pull Request

## License

MIT License - Feel free to use, modify, and share!

## Author

**Logan CHEN**
- GitHub: [@loganylchen](https://github.com/loganylchen)
- Email: yuelong.chen.btr@gmail.com

---

**Happy Terminal-ing! 🚀**

If this config helps you, consider giving it a ⭐!
