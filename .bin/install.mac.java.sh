#!/bin/sh

# get brew
if !(type "brew" > /dev/null 2>&1); then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# brew install
brew update & install \
gradle \
maven

# SDKMAN!
if [ ! -f ~/.sdkman ]; then
	curl -s "https://get.sdkman.io" | bash
	source "$HOME/.sdkman/bin/sdkman-init.sh"
	sdk install java 11.0.2-open
	sdk use java 11.0.2-open
fi

