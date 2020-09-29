#!/bin/sh


# get brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# brew install
brew update & install \
git \
vim \
zsh-completions \
kubectl \
kube-ps1 \
kubectx \
bpctl \

if [ -f $(brew --prefix)/share/zsh/site-functions/_bpctl ]; then
  bpctl completion zsh > $(brew --prefix)/share/zsh/site-functions/_bpctl
fi


# mv2trash
if [ ! -f ~/dotfiles/bin/mv2trash ]; then
	echo "download mv2trash!"
	curl -L https://raw.githubusercontent.com/dankogai/osx-mv2trash/master/bin/mv2trash > ~/dotfiles/bin/mv2trash
	chmod a+x ~/dotfiles/bin/mv2trash
fi

