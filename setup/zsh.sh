#!/bin/sh

set -e

CUSTOM="$HOME/.oh-my-zsh/custom"
CUSTOM_PLUGINS="${CUSTOM}/plugins"
CUSTOM_THEMES="${CUSTOM}/themes"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Installing oh-my-zsh"

	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

DIRECTORY="$CUSTOM_PLUGINS/zsh-nvm"
if [ ! -d "$DIRECTORY" ]; then
	echo "Installing zsh-nvm"

	git clone https://github.com/lukechilds/zsh-nvm $DIRECTORY
fi

DIRECTORY="$CUSTOM_PLUGINS/zsh-syntax-highlighting"
if [ ! -d "$DIRECTORY" ]; then
	echo "Installing zsh-syntax-highlighting"

	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$DIRECTORY"
fi

DIRECTORY="$CUSTOM_THEMES/powerlevel9k"
if [ ! -d "$DIRECTORY" ]; then
	echo "Installing powerlevel9k"

	git clone https://github.com/bhilburn/powerlevel9k.git "$DIRECTORY"
fi

zshrc="$HOME/.shell-config/zshrc"
target="$HOME/.zshrc"

rm -f $target
ln -s $zshrc $target
