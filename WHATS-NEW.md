# What's New - Enhanced Features

## 🎉 New Features (v1.1)

Based on popular Ghostty configurations from GitHub, we've added these powerful features:

### 1. **Quick Terminal** ⚡
Similar to iTerm2's Hotkey Window - instant terminal access!

```conf
quick-terminal-position = top
quick-terminal-autohide = true
```

**Benefits:**
- Instant terminal popup from anywhere
- Auto-hides when you click outside
- Perfect for quick commands without switching apps

### 2. **Clipboard Protection** 🔒
Security feature to prevent accidental paste of dangerous commands

```conf
clipboard-paste-protection = true
clipboard-paste-bracketed-safe = true
```

**Benefits:**
- Warns before pasting multi-line commands
- Prevents accidental execution of copied code
- Extra layer of security

### 3. **Command Notifications** 🔔
Get notified when long-running commands finish

```conf
notify-on-command-finish = always
```

**Benefits:**
- No need to stare at the terminal
- Get notified when `make`, `npm install`, etc. complete
- Works with desktop notifications

### 4. **Split Pane Zoom** 🔍
Maximize current split pane temporarily

```conf
keybind = cmd+shift+enter=toggle_split_zoom
```

**Benefits:**
- Focus on one pane without losing others
- Quick toggle with keyboard shortcut
- Perfect for presentations

### 5. **Background Blur (macOS)** 🌈
Beautiful frosted glass effect

```conf
background-blur-radius = 30
macos-titlebar-style = transparent
```

**Benefits:**
- Modern, elegant appearance
- Transparent titlebar for seamless look
- Adjustable blur radius

### 6. **Unicode Rendering** 🌍
Better character display for international users

```conf
grapheme-width-method = unicode
```

**Benefits:**
- Proper display of CJK characters
- Better emoji rendering
- Correct width for special characters

### 7. **Minimum Contrast** 👁️
Improve readability in all conditions

```conf
minimum-contrast = 1.1
```

**Benefits:**
- Better text visibility
- Reduced eye strain
- Works with all themes

### 8. **Enhanced Shell Integration** 🐚
More control over shell features

```conf
shell-integration-features = no-cursor,ssh-env
```

**Benefits:**
- Better SSH experience
- No cursor override conflicts
- Environment variable support

### 9. **Mouse Optimizations** 🖱️
Better mouse behavior

```conf
mouse-hide-while-typing = true
mouse-scroll-multiplier = 0.95
```

**Benefits:**
- Cursor hides when typing (like macOS)
- Smoother scrolling
- Adjustable scroll speed

### 10. **Font Thicken** 💪
Bolder, more readable fonts

```conf
font-thicken = true
```

**Benefits:**
- Easier to read on high-DPI displays
- Better font rendering
- No blurry text

## 📊 Comparison

| Feature | Before | After |
|---------|--------|-------|
| Quick Terminal | ❌ | ✅ |
| Clipboard Protection | ❌ | ✅ |
| Command Notifications | ❌ | ✅ |
| Split Pane Zoom | ❌ | ✅ |
| Background Blur | ❌ | ✅ |
| Unicode Rendering | Basic | ✅ Optimized |
| Minimum Contrast | Default | ✅ 1.1 |
| Font Thicken | ❌ | ✅ |

## 🚀 How to Use

### Quick Terminal
```bash
# The quick terminal appears automatically at the top of your screen
# Just start typing! It will auto-hide when you click outside
```

### Split Pane Zoom
```bash
# 1. Create a split: Cmd+D (macOS) or Ctrl+Shift+D (Linux)
# 2. Zoom in: Cmd+Shift+Enter
# 3. Zoom out: Cmd+Shift+Enter again
```

### Command Notifications
```bash
# Long-running command example:
sleep 10 && echo "Done!"

# You'll get a notification when it completes
# Works with any command that takes > 1 second
```

### Clipboard Protection
```bash
# Copy this multi-line command:
echo "Line 1"
echo "Line 2"
echo "Line 3"

# When you paste, Ghostty will warn you before executing
```

## 🎨 Visual Improvements

### Before
- Standard transparency
- No blur effect
- Basic character rendering

### After
- Frosted glass blur (macOS)
- Better Unicode support
- Improved contrast
- Thicker, more readable fonts

## 💡 Pro Tips

1. **Quick Terminal for System Admins**
   - Use for quick SSH commands
   - Check logs without switching windows
   - Run system monitoring tools

2. **Split Pane Zoom for Developers**
   - Focus on one task at a time
   - Perfect for debugging
   - Great for code reviews

3. **Notifications for CI/CD**
   - Get notified when builds complete
   - No need to watch the terminal
   - Works with all build tools

4. **Background Blur for Aesthetics**
   - Beautiful on macOS
   - Adjustable blur level
   - Matches system design language

## 🔧 Configuration Changes

All new features are **enabled by default**. To customize:

```bash
# Edit config
nano ~/.config/ghostty/config

# Disable Quick Terminal
# quick-terminal-position = top  # Comment out

# Adjust blur (macOS only)
background-blur-radius = 20  # Less blur
background-blur-radius = 50  # More blur

# Adjust minimum contrast
minimum-contrast = 1.0  # Less contrast
minimum-contrast = 1.3  # More contrast
```

## 📚 Learn More

- [Ghostty Docs](https://ghostty.org/docs)
- [Config Reference](https://ghostty.org/docs/config/reference)
- [GitHub Repo](https://github.com/loganylchen/ghostty-config)

---

**Enjoy the enhanced Ghostty experience! 🚀**
