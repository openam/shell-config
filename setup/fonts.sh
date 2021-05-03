#!/bin/sh

set -e

case $(uname) in
    Darwin)
      FONT_DIR="$HOME/Library/Fonts"
      ;;
    Linux)
      FONT_DIR="$HOME/.local/share/fonts"
      mkdir -p $FONT_DIR
      ;;
    *)
      echo 'Could not determine font directory'
      exit 2
esac

curl -fLo "$FONT_DIR/Iosevka Term Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Iosevka/Bold/complete/Iosevka%20Term%20Bold%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Iosevka Term Bold Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Iosevka/Bold-Italic/complete/Iosevka%20Term%20Bold%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Iosevka Term Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Iosevka/Italic/complete/Iosevka%20Term%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Iosevka Term Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Iosevka/Regular/complete/Iosevka%20Term%20Nerd%20Font%20Complete.ttf?raw=true

curl -fLo "$FONT_DIR/Hack Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Bold/complete/Hack%20Bold%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Hack Bold Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/BoldItalic/complete/Hack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Hack Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Italic/complete/Hack%20Italic%20Nerd%20Font%20Complete.ttf?raw=true
curl -fLo "$FONT_DIR/Hack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf?raw=true

