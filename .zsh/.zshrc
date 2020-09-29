#!/bin/zsh


# 色を付ける
# ----------------------------------------
autoload -U colors
colors


# 補完機能
# ----------------------------------------

# 補完機能有効にする
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
autoload -U compinit
compinit -u


zstyle ':completion:*' list-colors "${LS_COLORS}" 		# 補完候補に色つける
setopt complete_in_word 								# 単語の入力途中でもTab補完を有効化
zstyle ':completion:*:default' menu select=1 			# 補完候補をハイライト
zstyle ':completion::complete:*' use-cache true 		# キャッシュの利用による補完の高速化
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 	# 大文字、小文字を区別せず補完する
setopt list_packed 										# 補完リストの表示間隔を狭くする

# コマンドの打ち間違いを指摘してくれる
# setopt correct
# SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "


# ----------------------------------------
# PROMPT
# ----------------------------------------

export PROMPT='[%F{green}%~%f]'

# olivierverdier/zsh-git-prompt
if [ -f /usr/local/opt/kube-ps1/share/kube-ps1.sh ]; then
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

# jonmosco/kube-ps1
if [ -f /usr/local/opt/kube-ps1/share/kube-ps1.sh ]; then
	source "/usr/local/opt/kube-ps1/share/kube-ps1.sh"
	PROMPT='$(kube_ps1)'$PROMPT
fi


# global install した npm ライブラリのパスを通す
export NODE_PATH=`npm root -g`

