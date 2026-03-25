# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.2.0] - 2026-03-25

### Fixed
- **Major Configuration Overhaul**: Removed all invalid configuration options
  - Removed: font-weight, antialiasing, subpixel-position, line-height, letter-spacing
  - Removed: max-frame-rate, vsync, cursor-blink, cursor-blink-interval
  - Removed: window-title, window-dimensions, bell, confirm-quit
  - Removed: bracketed-paste, bracketed-paste-filter, select-to-copy
  - Removed: platform-specific blocks ([platform=macos], [platform=linux])
  - Removed: non-existent macOS and Linux specific options
- Fixed all keybinding errors (InvalidAction, InvalidFormat)
- Fixed theme file format (removed .conf extension)

### Changed
- Simplified configuration to only use valid, tested options
- Updated theme installation to use correct file format
- Improved documentation to reflect actual capabilities
- Removed unstable or future-version features

### Added
- Clean, minimal configuration that works reliably
- Proper theme file format (no .conf extension)
- Better installation script with theme handling

## [1.1.1] - 2026-03-25

### Fixed
- 修复配置文件中的错误选项
  - `scrollback-lines` → `scrollback-limit`
  - `cursor-thickness` → `adjust-cursor-thickness`
- 移除不存在的配置选项
  - `quick-terminal-*` (未来版本特性)
  - `background-blur-radius` (不存在)
  - `macos-titlebar-style` (不存在)
  - `notify-on-command-finish` (不存在)
  - `window-title` (格式错误)

### Changed
- 更新文档以反映实际可用的功能
- 简化配置，只保留稳定可用的选项

## [1.1.0] - 2026-03-23

### Added
- Clipboard paste protection for security
- Unicode rendering optimization
- Minimum contrast setting for better readability
- Font thicken option for clearer text
- Enhanced mouse behavior (hide while typing, scroll multiplier)
- Shell integration features (no-cursor, ssh-env)
- Split pane zoom functionality (Cmd+Shift+Enter)
- Catppuccin Mocha and Latte themes
- Platform-specific blocks ([platform=macos], [platform=linux])

### Changed
- Updated main config to cross-platform best practices
- Improved split pane management
- Better font rendering settings
- Enhanced scrollback buffer (10000 lines)

### Fixed
- Cross-platform compatibility issues
- Font consistency across macOS and Linux

## [1.0.0] - 2026-03-23

### Added
- Initial release with One Dark theme
- 4 color themes (Tokyo Night, Nord, Gruvbox, Dracula)
- 3 specialized configurations
- Easy installation script (install.sh)
- Theme switcher script (switch-theme.sh)
- Comprehensive README with examples
- Quick reference card (QUICKREF.md)
- Contributing guidelines
- MIT License

### Keybindings
- Split pane management (create, navigate, resize)
- Tab management
- Font size adjustment
- Clipboard operations
- Search functionality
- Fullscreen toggle

### Features
- GPU acceleration enabled
- Shell integration (zsh/fish/bash)
- Desktop notifications
- URL link support
- Smart copy/paste behavior
- Optimized scrollback buffer

---

## Version History

- **1.1.0** (2026-03-23): Cross-platform best practices config, Catppuccin themes
- **1.0.0** (2026-03-23): Initial release with core features
