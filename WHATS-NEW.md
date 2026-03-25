# What's New - v1.2.0 (Stable Release)

## 🎉 Major Configuration Overhaul

This release removes all invalid configuration options and provides a clean, stable, and working configuration.

## ✨ What's Working

### 1. **Auto Dark/Light Theme** 🌓
Automatically switches themes based on your system settings

```conf
theme = dark:catppuccin-mocha, light:catppuccin-latte
```

**Benefits:**
- No manual theme switching
- Matches your system preference
- Beautiful themes included

### 2. **Split Panes** 🔍
Create and manage split terminals

```bash
# Create splits
Cmd+D (macOS) / Ctrl+Shift+D (Linux)  # Split right
Cmd+Shift+D (macOS)                   # Split down

# Navigate splits
Cmd+Arrow (macOS) / Ctrl+Alt+Arrow (Linux)

# Zoom split (focus on one)
Cmd+Shift+Enter / Ctrl+Shift+Enter
```

**Benefits:**
- Monitor logs while coding
- Work on multiple tasks
- Easy navigation

### 3. **Tabs** 📑
Manage multiple terminal sessions

```bash
Cmd+T           # New tab
Cmd+W           # Close tab
Ctrl+Tab        # Next tab
Ctrl+Shift+Tab  # Previous tab
```

### 4. **Font Size Adjustment** 📏
Quickly change font size for presentations or readability

```bash
Cmd+Plus   # Increase
Cmd+Minus  # Decrease
Cmd+0      # Reset
```

### 5. **Quick Config Reload** 🔄
No restart needed!

```bash
Cmd+R (macOS) / Ctrl+R (Linux)
```

## 🗑️ What Was Removed

To ensure stability, we removed all invalid or unstable options:

### Removed Font Options
- ❌ `font-weight` (not supported)
- ❌ `antialiasing` (not configurable)
- ❌ `subpixel-position` (not configurable)
- ❌ `line-height` (not supported)
- ❌ `letter-spacing` (not supported)

### Removed Window Options
- ❌ `max-frame-rate` (not supported)
- ❌ `vsync` (not configurable)
- ❌ `window-title` (format error)
- ❌ `window-dimensions` (not supported)
- ❌ `bell` (not supported)
- ❌ `confirm-quit` (not supported)

### Removed Cursor Options
- ❌ `cursor-blink` (not supported)
- ❌ `cursor-blink-interval` (not supported)
- ❌ `cursor-thickness` (should be `adjust-cursor-thickness`)

### Removed Behavior Options
- ❌ `bracketed-paste` (not configurable)
- ❌ `bracketed-paste-filter` (not configurable)
- ❌ `select-to-copy` (not supported)

### Removed Platform-Specific Blocks
- ❌ `[platform=macos]` (syntax error)
- ❌ `[platform=linux]` (syntax error)
- ❌ All macOS-specific options
- ❌ All Linux-specific options

### Removed Future Features
- ❌ `quick-terminal-*` (not yet available)
- ❌ `background-blur-radius` (not supported)
- ❌ `notify-on-command-finish` (not supported)

## 📊 Configuration Comparison

| Item | v1.1 | v1.2 |
|------|------|------|
| Total Lines | 197 | 92 |
| Config Errors | 37 | **0** ✅ |
| Invalid Options | 30+ | **0** ✅ |
| Keybinding Errors | 11 | **0** ✅ |
| Theme Errors | 1 | **0** ✅ |

## 🚀 What's Included

### Minimal Configuration
Only essential, tested options:

```conf
# Fonts
font-family = "JetBrains Mono Nerd Font"
font-size = 14

# Window
window-padding-x = 8
window-padding-y = 8
background-opacity = 0.96

# Theme
theme = dark:catppuccin-mocha, light:catppuccin-latte

# Cursor
cursor-style = bar

# Behavior
scrollback-limit = 10000
window-save-state = always
```

### Working Keybindings
All keybindings are tested and working:

- ✅ Split panes (create, navigate, zoom)
- ✅ Tabs (create, close, switch)
- ✅ Font size (increase, decrease, reset)
- ✅ System (reload config, fullscreen)

### Included Themes
- ✅ catppuccin-mocha (dark)
- ✅ catppuccin-latte (light)
- ✅ tokyo-night
- ✅ nord
- ✅ gruvbox
- ✅ dracula

## 💡 Philosophy

**Less is More**

Instead of trying to configure every possible option (many of which don't exist or are unstable), we focus on:

1. **Stability** - Only tested, working options
2. **Simplicity** - Easy to understand and modify
3. **Reliability** - No configuration errors
4. **Beauty** - Beautiful themes out of the box

## 🔧 Migration Guide

If you're upgrading from v1.1:

```bash
# Backup your old config
cp ~/.config/ghostty/config ~/.config/ghostty/config.v1.1.backup

# Pull latest changes
cd ~/ghostty-config
git pull

# Reinstall
./install.sh

# Reload
# Press Cmd+R (macOS) or Ctrl+R (Linux)
```

## 📚 Learn More

- [Ghostty Docs](https://ghostty.org/docs)
- [Config Reference](https://ghostty.org/docs/config/reference)
- [GitHub Repo](https://github.com/loganylchen/ghostty-config)

---

**This is the most stable Ghostty configuration! 🚀**
