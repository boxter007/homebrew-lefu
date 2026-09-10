# homebrew-lefu

Homebrew tap for [乐府 Lefu](https://github.com/boxter007/lefu) — a macOS app that records and archives music from Soda Music (汽水音乐) into per-song MP3 files with embedded cover art and synchronized lyrics.

## Install

```bash
brew tap boxter007/lefu
brew install --cask lefu
```

Or in one command:

```bash
brew install --cask boxter007/lefu/lefu
```

## Uninstall

```bash
brew uninstall --cask lefu
brew untap boxter007/lefu
```

To also remove preferences and caches:

```bash
brew uninstall --zap --cask lefu
```

## Note

The app is currently ad-hoc signed, so macOS Gatekeeper will warn on first launch. Right-click the app and choose Open, or run `xattr -cr "/Applications/乐府.app"`.
