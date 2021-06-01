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
[ ! -d '~/.vim/tmp' ] && mkdir -p ~/.vim/tmp
[ ! -d '~/.vim/bundle' ] && mkdir -p ~/.vim/bundle & git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

# tmux
ln -sf ~/dotfiles/.tmux.conf

# setup colors
# if [ ! -d '~/dotfiles/colors' ]; then
# 	mkdir -p ~/dotfiles/colors
# fi
# git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized
# ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/dotfiles/.zsh/.dircolors

is_osx && source ~/dotfiles/.bin/install.mac.sh

