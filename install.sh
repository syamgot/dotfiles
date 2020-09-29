#!/bin/sh


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
ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/dotfiles/.zsh/.dircolors



ln -sf ~/dotfiles/.zsh/.zshenv ~/.zshenv
ln -sf ~/dotfiles/.gitignore_global ~/.gitignore_global

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global

