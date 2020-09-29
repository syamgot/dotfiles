#!/bin/sh


cd $HOME/dotfiles

# setup vim
if [ ! -d '.vim/bundle' ]; then
	mkdir -p .vim/bundle
fi
git clone https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim




# setup colors
if [ ! -d 'colors' ]; then
	mkdir -p colors
fi
git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized



ln -s ~/dotfiles/.zsh/.zshenv ~/.zshenv

ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global

