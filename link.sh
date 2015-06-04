#!/bin/sh

ln -sf ~/dotfiles/.bash_profile ~/.bash_profile
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.aliases ~/.aliases
ln -sf ~/dotfiles/.exports ~/.exports
ln -sf ~/dotfiles/.osx ~/.osx
ln -sf ~/dotfiles/.gitignore ~/.gitignore

ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/.dircolors

ln -sf ~/dotfiles/bin ~/bin
rm ~/bin/bin 2> /dev/null
ln -sf ~/dotfiles/.vim ~/.vim
rm ~/.vim/.vim 2> /dev/null


