#!/bin/sh

for alias in $HOME/.shell-config/aliases/*; do
	source $alias;
done

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

for file in $HOME/.shell-config/setup/*; do
	chmod +x $file
done

for theme in $HOME/.shell-config/themes/*; do
	filename="${theme##*/}"
	target=$HOME/.oh-my-zsh/themes/$filename

	rm -f $target
	ln -s $theme $target
done
