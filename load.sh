#!/bin/sh

# Source private files
for private in $HOME/.shell-config/private/*; do
	source $private;
done

# Generate aliases
for alias in $HOME/.shell-config/aliases/*; do
	source $alias;
done

# Source config files
for config in $HOME/.shell-config/config/*; do
	source $config;
done

# Add ./bin folder to PATH and set as executable
export PATH=$HOME/.shell-config/bin:$PATH
for file in $HOME/.shell-config/bin/*; do
	chmod +x $file
done

# For OS X binaries only. Add ./bin folder to PATH and set as executable
if [[ $(uname -s) == "Darwin" ]]; then
	export PATH=$HOME/.shell-config/bin/osx:$PATH

	for file in $HOME/.shell-config/bin/osx/*; do
		chmod +x $file
	done
fi

# Make setup files executable
for file in $HOME/.shell-config/setup/*; do
	chmod +x $file
done

# Link oh-my-zsh themes
for theme in $HOME/.shell-config/themes/*; do
	filename="${theme##*/}"
	target=$HOME/.oh-my-zsh/themes/$filename

	rm -f $target
	ln -s $theme $target
done
