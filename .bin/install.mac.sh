#!/bin/sh


# setup
# ----------------------------------------

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

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

