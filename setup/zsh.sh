#!/bin/sh

set -e

CUSTOM="$HOME/.oh-my-zsh/custom"
CUSTOM_PLUGINS="${CUSTOM}/plugins"
CUSTOM_THEMES="${CUSTOM}/themes"

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Installing oh-my-zsh"

	curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
fi

function update_gitrepo() {
	local name=$(basename $1)
	read -p "Would you like to update $name (Y/n)? " -r
	if [[ $REPLY =~ ^[Yy]([Ee][Ss])?$ ]] || [[ -z $REPLY ]]; then
		echo "Updating $1..."
		git -C $1 pull
		echo
	fi
}

function install_or_update() {
	local name=$(basename $2)
	local DIRECTORY="$CUSTOM/$1/$name"

	if [ ! -d "$DIRECTORY" ]; then
		echo "Installing $name"

		git clone $2 $DIRECTORY
		echo
	else
		update_gitrepo $DIRECTORY
	fi
}

install_or_update plugins https://github.com/lukechilds/zsh-nvm
install_or_update plugins https://github.com/zsh-users/zsh-syntax-highlighting
install_or_update themes https://github.com/bhilburn/powerlevel9k

zshrc="$HOME/.shell-config/zshrc"
target="$HOME/.zshrc"

rm -f $target
ln -s $zshrc $target
