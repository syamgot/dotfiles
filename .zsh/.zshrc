#!/bin/zsh

for f in ~/dotfiles/.zsh/.zsh.d/[0-9]*.(sh|zsh); do source "$f"; done

# rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# pyenv
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/shims:$PATH"
# eval "$(pyenv init -)"
