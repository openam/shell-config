#!/bin/sh

set -e

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Installing oh-my-zsh"

	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-nvm" ]; then
	echo "Installing zsh-nvm"

	git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
fi

if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
	echo "Installing zsh-syntax-highlighting"

	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

zshrc="$HOME/.shell-config/zshrc"
target="$HOME/.zshrc"

rm -f $target
ln -s $zshrc $target
