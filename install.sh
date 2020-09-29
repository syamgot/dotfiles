#!/bin/sh


cd $HOME/dotfiles

#
if [ ! -d '.vim/bundle' ]; then
	mkdir -p .vim/bundle
fi
git clone https://github.com/Shougo/neobundle.vim .vim/bundle/neobundle.vim


# 
if [ ! -d 'colors' ]; then
	mkdir -p colors
fi
git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized



ln -s ~/dotfiles/.zsh/.zshenv ~/.zshenv


