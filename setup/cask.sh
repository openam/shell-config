#!/bin/sh

set -e

if [[ $(uname -s) == "Darwin" ]]; then
	brew cask install virtualbox
fi
