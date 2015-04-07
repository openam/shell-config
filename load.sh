#!/bin/sh

for alias in $HOME/.shell-config/aliases/*; do
	source $alias;
done

for config in $HOME/.shell-config/config/*; do
	source $config;
done

for file in $HOME/.shell-config/bin/*; do
	chmod +x $file
done

for theme in $HOME/.shell-config/themes/*; do
	filename="${theme##*/}"
	target=$HOME/.oh-my-zsh/themes/$filename

	rm -f $target
	ln -s $theme $target
done
