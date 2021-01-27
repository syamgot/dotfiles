#!/bin/sh


# zsh
ln -sf ~/dotfiles/.zsh/.zshenv ~/.zshenv

# git
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

# vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

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

