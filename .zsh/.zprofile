
# OS check
if [ "$(uname)" = 'Darwin' ]; then
	source ~/dotfiles/.os/.osx
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
fi

# Load the shell dotfiles, and then some:
for file in ~/dotfiles/.zsh/.{aliases,exports,colors,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

