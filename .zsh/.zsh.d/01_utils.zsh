#!/bin/zsh


# Make vim the default editor.
export EDITOR='vim';



# ----------------------------------------
# 色を付ける
# ----------------------------------------
autoload -U colors
colors


# ----------------------------------------
# 履歴
# ----------------------------------------

HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups 	# ignore duplication command history list
setopt share_history 		# share command history data
setopt extended_history 	#ヒストリに実行時間も保存

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end




# コマンドの打ち間違いを指摘してくれる
# setopt correct
# SPROMPT="correct: $RED%R$DEFAULT -> $GREEN%r$DEFAULT ? [Yes/No/Abort/Edit] => "

# global install した npm ライブラリのパスを通す
export NODE_PATH=`npm root -g`


if [ -f "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
	source "$HOME/.sdkman/bin/sdkman-init.sh"
fi

