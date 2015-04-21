#!/bin/sh

set -e

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update
brew prune

brew install git
brew install wget
brew install tree
brew install node
brew install docker
brew install boot2docker
brew install caskroom/cask/brew-cask
