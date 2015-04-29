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

# remove existing .zshrc
rm ~/.zshrc

# symlink new configuration
ln -s ~/.shell-config/zshrc ~/.zshrc

# reload profile
source ~/.zshrc
```
