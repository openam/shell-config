#!/bin/sh

set -e

dotfiles="$HOME/.shell-config/dotfiles"

# Git files
ln -s "$dotfiles/gitconfig" "$HOME/.shell-config/dotfiles/.gitconfig"
ln -s "$dotfiles/gitignore_global" "$HOME/.shell-config/dotfiles/.gitignore_global"
ln -s "$dotfiles/screenrc" "$HOME/.shell-config/dotfiles/.screenrc"
