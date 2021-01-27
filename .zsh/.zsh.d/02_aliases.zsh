# ls
if [ "$(uname)" = 'Darwin' ]; then
	alias ls='ls -G1p'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
	alias ls='ls --color=auto -1p' 
fi


# mv2trash 
if [ -x ~/bin/mv2trash ]; then
	alias rm='~/bin/mv2trash'
fi



alias ll='ls -l'
alias la='ll -a'
alias lt='ll -tc'

alias vi='vim'


# k8s
alias kl='kubectl'
alias kx='kubectx'
alias kns='kubens'


alias del='/bin/rm'


alias curl_header='curl -D - -s -o /dev/null'


