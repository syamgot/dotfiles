#!/bin/sh

cd `dirname $0`
DOTFILES_DIR=`pwd`/..
source $DOTFILES_DIR/bin/common

# brew
if doesnt_have brew; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew update & install \
git \
vim \
nodebrew \
wget \
zsh-git-prompt \
zsh-completions \
gradle \
maven

# mv2trash
if doesnt_have mv2trash; then
	curl -sL https://raw.githubusercontent.com/dankogai/osx-mv2trash/master/bin/mv2trash > $DOTFILES_DIR/bin/mv2trash
	chmod a+x $DOTFILES_DIR/bin/mv2trash
fi

# nodebrew
if [ ! -d ~/.nodebrew ]; then
	nodebrew setup
	nodebrew install-binary v14.15.4
	nodebrew use v14.15.4
fi

# SDKMAN!
if [ ! -d ~/.sdkman ]; then
	curl -s "https://get.sdkman.io" | bash
	source "$HOME/.sdkman/bin/sdkman-init.sh"
	sdk install java 11.0.2-open
	sdk use java 11.0.2-open
fi

