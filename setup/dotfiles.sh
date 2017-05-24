#!/bin/sh

set -e

dotfiles="$HOME/.shell-config/dotfiles"

# Git files
ln -s "$dotfiles/gitconfig" "$HOME/.gitconfig"
ln -s "$dotfiles/gitignore_global" "$HOME/.gitignore_global"
ln -s "$dotfiles/screenrc" "$HOME/.screenrc"
ln -s "$dotfiles/tmux.conf" "$HOME/.tmux.conf"
