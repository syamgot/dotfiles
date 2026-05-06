#!/bin/bash
set -e

DOTFILES_DIR="$HOME/dotfiles"

# Install Homebrew if not found
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  
  # Load Homebrew for the current session
  if [ -f "/opt/homebrew/bin/brew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ -f "/usr/local/bin/brew" ]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

# Ensure brew is in PATH for re-runs where it's installed but not in PATH
if ! command -v brew >/dev/null 2>&1; then
   if [ -f "/opt/homebrew/bin/brew" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
  elif [ -f "/usr/local/bin/brew" ]; then
    eval "$(/usr/local/bin/brew shellenv)"
  fi
fi

# Clone dotfiles if not already cloned
if [ ! -d "$DOTFILES_DIR" ]; then
  echo "Cloning dotfiles repository..."
  git clone https://github.com/syamgot/dotfiles.git "$DOTFILES_DIR"
fi

# Install prerequisites
echo "Installing prerequisites..."
brew install chezmoi neovim git

# Configure chezmoi to use this repo (~/dotfiles) as source
mkdir -p "$HOME/.config/chezmoi"
cat > "$HOME/.config/chezmoi/chezmoi.toml" <<EOF
sourceDir = "$DOTFILES_DIR"
EOF

# Apply dotfiles
echo "Applying dotfiles..."
chezmoi apply

# Install runtimes (Node, Python, Ruby) via mise
echo "Installing runtimes with mise..."
mise install

echo "Done! Please restart your shell."
