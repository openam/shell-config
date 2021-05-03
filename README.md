# Shell Config
This assumes that you have [Z shell](wikipedia.org/wiki/Z_shell) and [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) previously configured on your system.

## Automated Setup
Coming soon!

## Manual Setup
Clone the repository to the home directory:

```bash
git clone https://github.com/<username>/shell-config.git ~/.shell-config
```

Copy the base zshrc file and enable/disable any options you want to:

```bash
# copy the zshrc file
cp ~/.shell-config/zshrc.default ~/.shell-config/zshrc

# edit the file as desired
vi ~/.shell-config/zshrc

# install required
~/.shell-config/setup/zsh.sh
~/.shell-config/setup/fonts.sh
~/.shell-config/setup/dotfiles.sh

# install extras
# you may want to look at these files to verify they are still things you want installed
~/.shell-config/setup/homebrew.sh


# symlink new configuration
ln -is ~/.shell-config/zshrc ~/.zshrc

# reload profile
source ~/.zshrc
```
