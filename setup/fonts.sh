#!/bin/sh

set -e

case $(uname) in
    Darwin)
      FONT_DIR="$HOME/Library/Fonts"
      ;;
    Linux)
      FONT_DIR="$HOME/.local/share/fonts"
      mkdir -p $HOME/.local/share/fonts
      ;;
    *)
      echo 'Could not determine font directory'
      exit 2
esac

curl -fLo "$FONT_DIR/Knack Bold Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Bold/complete/Knack%20Bold%20Nerd%20Font%20Complete.ttf
curl -fLo "$FONT_DIR/Knack Bold Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/BoldItalic/complete/Knack%20Bold%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "$FONT_DIR/Knack Italic Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Italic/complete/Knack%20Italic%20Nerd%20Font%20Complete.ttf
curl -fLo "$FONT_DIR/Knack Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Knack%20Regular%20Nerd%20Font%20Complete.ttf
