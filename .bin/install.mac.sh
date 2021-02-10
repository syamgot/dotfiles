#!/bin/sh

# get brew
if !(type "brew" > /dev/null 2>&1); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# brew install
brew update & install \
git \
vim \
nodebrew \
wget \
zsh-git-prompt \
zsh-completions


# mv2trash
if [ ! -f ~/dotfiles/bin/mv2trash ]; then
	echo "download mv2trash!"
	curl -L https://raw.githubusercontent.com/dankogai/osx-mv2trash/master/bin/mv2trash > ~/dotfiles/bin/mv2trash
	chmod a+x ~/dotfiles/bin/mv2trash
fi

# nodebrew
if [ ! -f ~/.nodebrew ]; then
	nodebrew setup
	nodebrew install-binary v14.15.4
	nodebrew use v14.15.4
fi
