# Dotfiles

Modernized dotfiles managed by [chezmoi](https://www.chezmoi.io/) and [Neovim](https://neovim.io/).

![Status](https://img.shields.io/badge/status-active-success.svg)

## Prerequisites

- **macOS**
- **Homebrew**

## Installation

Run this one-liner to install prerequisites and apply dotfiles:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/syamgot/dotfiles/master/install.sh)"
```

Or manually:

```bash
# 1. Install tools
brew install chezmoi neovim git

# 2. Initialize chezmoi with this repo
chezmoi init --apply syamgot
```

## Features

- **Neovim**: Modern Lua-based config with `lazy.nvim`, `Telescope`, `Treesitter`, and LSP.
- **Zsh**: Preserved existing zsh configuration.
- **Management**: Easy updates with `chezmoi apply`.

## Structure

- `dot_zshrc`: Main Zsh configuration (mapped to `~/.zshrc`).
- `dot_config/nvim`: Neovim configuration.
- `dot_tmux.conf`: Tmux configuration.
