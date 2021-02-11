#!/bin/sh

cd `dirname $0`
DOTFILES_DIR=`pwd`/..
source $DOTFILES_DIR/bin/common

# zsh
ln -sf $DOTFILES_DIR/.zsh/.zshenv ~/.zshenv

# git
ln -sf $DOTFILES_DIR/.gitignore_global ~/.gitignore_global

# vim
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.vim ~/.vim

if [ ! -d '~/.vim/bundle' ]; then
	mkdir -p ~/.vim/bundle
	git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

# setup colors
# if [ ! -d '~/dotfiles/colors' ]; then
# 	mkdir -p ~/dotfiles/colors
# fi
# git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized
# ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/dotfiles/.zsh/.dircolors

if is_osx; then
  source ~/dotfiles/.bin/install.mac.sh
fi

