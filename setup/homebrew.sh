#!/bin/sh

set -e

if [[ $(uname -s) == "Darwin" ]]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew doctor
	brew update
	brew prune

	brew install git
	brew install htop
	brew install wget
	brew install tree
	brew install node
	brew install docker
	brew install docker-machine
	brew install caskroom/cask/brew-cask
fi
