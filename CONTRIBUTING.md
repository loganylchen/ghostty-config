# Contributing to Ghostty Config

Thank you for your interest in contributing! 🎉

## Ways to Contribute

### 1. Share Your Config

Have a great configuration? Share it!

1. Fork this repository
2. Create a new file in `configs/` or `themes/`
3. Submit a pull request

### 2. Report Issues

Found a bug or have a suggestion?

- Check existing issues first
- Use the issue templates
- Include your OS and Ghostty version

### 3. Improve Documentation

- Fix typos
- Add examples
- Improve clarity

### 4. Share Themes

Created a beautiful theme?

1. Create a `.conf` file in `themes/`
2. Add a comment with color preview
3. Submit a PR

Example:
```conf
# My Custom Theme
# Preview: https://coolors.co/1e2127-abb2bf-528bff
background = 1e2127
foreground = abb2bf
...
```

## Development Setup

```bash
# Clone your fork
git clone https://github.com/YOUR_USERNAME/ghostty-config.git
cd ghostty-config

# Test your changes
cp config ~/.config/ghostty/config

# Reload Ghostty
# Ctrl+Shift+, (Linux) or Cmd+Shift+, (macOS)
```

## Guidelines

### Config Files

- Keep it simple and focused
- Add comments for clarity
- Test on both Linux and macOS if possible
- Follow the existing structure

### Themes

- Include all 16 palette colors
- Set background, foreground, cursor, and selection
- Add a comment describing the theme
- Use uppercase hex codes (e.g., `#FFFFFF`)

### Code Style

- Use 4-space indentation
- Group related settings
- Add section headers
- Keep lines under 80 chars when possible

## Testing

Before submitting:

1. Test on your system
2. Verify config syntax: `ghostty +show-config`
3. Check for errors in console
4. Test keybindings work correctly

## Questions?

- Open a discussion on GitHub
- Check existing documentation
- Review closed issues

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for making Ghostty better! 🚀
