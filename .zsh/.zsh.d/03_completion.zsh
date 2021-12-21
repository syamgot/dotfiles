# ----------------------------------------
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


# rbenv
[ -f ~/.rbenv/completions/rbenv.zsh ] && source ~/.rbenv/completions/rbenv.zsh

