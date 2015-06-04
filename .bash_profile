
# OS check
if [ "$(uname)" == 'Darwin' ]; then
  OS='OSX'
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  OS='Linux'
fi

# osx
if [ $OS = "OSX" ]; then
  source ~/.osx
fi

# .bashrc 
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
for file in ~/.{aliases,exports,colors,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;


# Make vim the default editor.
export EDITOR='vim';


