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
if [ ! -d 'colors' ]; then
	mkdir -p colors
fi
git clone https://github.com/seebi/dircolors-solarized colors/dircolors-solarized
ln -sf ~/dotfiles/colors/dircolors-solarized/dircolors.ansi-universal ~/dotfiles/.zsh/.dircolors






# setup
# ----------------------------------------

#
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
#
# brew update & install \
# git \
# vim \
# zsh-completions \
# kubectl \
# kube-ps1 \
# kubectx \
# bpctl \
#
# if [ -f $(brew --prefix)/share/zsh/site-functions/_bpctl ]; then
#   bpctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_bpctl
# fi


