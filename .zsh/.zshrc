#!/bin/zsh

for f in ~/dotfiles/.zsh/.zsh.d/[0-9]*.(sh|zsh); do source "$f"; done
