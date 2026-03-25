# What's New - Enhanced Features

## 🎉 Enhanced Features (v1.1)

Based on popular Ghostty configurations from GitHub, we've added these stable, tested features:

### 1. **Clipboard Protection** 🔒
Security feature to prevent accidental paste of dangerous commands

```conf
clipboard-paste-protection = true
clipboard-paste-bracketed-safe = true
```

**Benefits:**
- Warns before pasting multi-line commands
- Prevents accidental execution of copied code
- Extra layer of security

### 2. **Split Pane Zoom** 🔍
Maximize current split pane temporarily

```conf
keybind = cmd+shift+enter=toggle_split_zoom
```

**Benefits:**
- Focus on one pane without losing others
- Quick toggle with keyboard shortcut
- Perfect for presentations

### 3. **Unicode Rendering** 🌍
Better character display for international users

```conf
grapheme-width-method = unicode
```

**Benefits:**
- Proper display of CJK characters
- Better emoji rendering
- Correct width for special characters

### 4. **Minimum Contrast** 👁️
Improve readability in all conditions

```conf
minimum-contrast = 1.1
```

**Benefits:**
- Better text visibility
- Reduced eye strain
- Works with all themes

### 5. **Enhanced Shell Integration** 🐚
More control over shell features

```conf
shell-integration-features = no-cursor,ssh-env
```

**Benefits:**
- Better SSH experience
- No cursor override conflicts
- Environment variable support

### 6. **Mouse Optimizations** 🖱️
Better mouse behavior

```conf
mouse-hide-while-typing = true
mouse-scroll-multiplier = 0.95
```

**Benefits:**
- Cursor hides when typing (like macOS)
- Smoother scrolling
- Adjustable scroll speed

### 7. **Font Thicken** 💪
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
| Clipboard Protection | ❌ | ✅ |
| Split Pane Zoom | ❌ | ✅ |
| Unicode Rendering | Basic | ✅ Optimized |
| Minimum Contrast | Default | ✅ 1.1 |
| Font Thicken | ❌ | ✅ |
| Shell Integration | Basic | ✅ Enhanced |

## 🚀 How to Use

### Split Pane Zoom
```bash
# 1. Create a split: Cmd+D (macOS) or Ctrl+Shift+D (Linux)
# 2. Zoom in: Cmd+Shift+Enter
# 3. Zoom out: Cmd+Shift+Enter again
```

### Clipboard Protection
```bash
# Copy this multi-line command:
echo "Line 1"
echo "Line 2"
echo "Line 3"

# When you paste, Ghostty will warn you before executing
```

## 💡 Pro Tips

1. **Split Pane Zoom for Developers**
   - Focus on one task at a time
   - Perfect for debugging
   - Great for code reviews

2. **Clipboard Protection**
   - Prevents accidental execution
   - Warns for multi-line commands
   - Extra security layer

3. **Unicode Rendering**
   - Better for non-English text
   - Improved emoji display
   - Correct character widths

## 🔧 Configuration Changes

All features are **enabled by default**. To customize:

```bash
# Edit config
nano ~/.config/ghostty/config

# Adjust minimum contrast
minimum-contrast = 1.0  # Less contrast
minimum-contrast = 1.3  # More contrast

# Disable clipboard protection
# clipboard-paste-protection = false
```

## 📚 Learn More

- [Ghostty Docs](https://ghostty.org/docs)
- [Config Reference](https://ghostty.org/docs/config/reference)
- [GitHub Repo](https://github.com/loganylchen/ghostty-config)

---

**Enjoy the enhanced Ghostty experience! 🚀**
