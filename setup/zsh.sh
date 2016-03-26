#!/bin/sh

set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Installing oh-my-zsh"

	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

zshrc="$HOME/.shell-config/zshrc"
target="$HOME/.zshrc"

rm -f $target
ln -s $zshrc $target
