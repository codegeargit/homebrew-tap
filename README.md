# codegeargit/homebrew-tap

Homebrew tap for [Mac Commander](https://maccommander.com/), a keyboard-driven dual-pane file manager for macOS.

## Install

```bash
brew install --cask codegeargit/tap/mac-commander
```

Or tap first:

```bash
brew tap codegeargit/tap
brew install --cask mac-commander
```

Mac Commander updates itself through Sparkle, so `brew upgrade` is not needed for new versions.

## Uninstall

```bash
brew uninstall --cask mac-commander
# also remove preferences and caches
brew uninstall --zap --cask mac-commander
```
