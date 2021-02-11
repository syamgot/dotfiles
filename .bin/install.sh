#!/bin/sh

cd `dirname $0`
DOTFILES_DIR=`pwd`/..

# zsh
ln -sf $DOTFILES_DIR/.zsh/.zshenv ~/.zshenv

# git
ln -sf $DOTFILES_DIR/.gitignore_global ~/.gitignore_global

# vim
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.vim ~/.vim

if [ ! -d '~/.vim/bundle' ]; then
	mkdir -p ~/.vim/bundle
fi
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim


# setup colors
# if [ ! -d '~/dotfiles/colors' ]; then
# 	mkdir -p ~/dotfiles/colors
# fi
# git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized
# ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/dotfiles/.zsh/.dircolors



# ls
if [ "$(uname)" = 'Darwin' ]; then
	. ~/dotfiles/.bin/install.mac.sh
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
fi

