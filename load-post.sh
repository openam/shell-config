#!/bin/sh

# Source config files
for config in $HOME/.shell-config/config/post/*; do
	source $config;
done
