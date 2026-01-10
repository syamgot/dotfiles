#!/bin/zsh

export PROMPT='[%F{green}%~%f]'

# olivierverdier/zsh-git-prompt
if [ -f /usr/local/opt/zsh-git-prompt/zshrc.sh ]; then
	source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
	ZSH_THEME_GIT_PROMPT_PREFIX="["
	ZSH_THEME_GIT_PROMPT_SUFFIX=" ]"
	ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg[white]%}"
	ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}%{ %G%}"
	ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[magenta]%}%{x%G%}"
	ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[red]%}%{+%G%}"
	ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%}%{-%G%}"
	ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%}%{+%G%}"
	ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}%{✔%G%}"
	PROMPT='$(git_super_status)'$PROMPT
fi

export PROMPT=$PROMPT$'\n%F{green}%% %f'
