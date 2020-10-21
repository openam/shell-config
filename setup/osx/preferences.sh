#!/bin/sh

# TODO: need to wrap this whole thing in a check to make sure it's on a 'DARWIN machine'
# TODO: need to figure out any other defaults that I want add in here
# 	Bartender


# ==============================================
# NSGlobalDomain settings
# ==============================================

# Dark theme
defaults write NSGlobalDomain AppleInterfaceStyle Dark

# Function keys act as standard function keys
# With this option enabled, press Fn key to access special key functions
defaults write NSGlobalDomain "com.apple.keyboard.fnState" -int 1

# ==============================================
# Desktop & Screen Saver
# ==============================================

# Prompt for password after 5 seconds
# defaults read com.apple.screensaver askForPassword -int 1
# defaults read com.apple.screensaver askForPasswordDelay -int 5

# # Screen saver: Aerial
# defaults -currentHost read com.apple.screensaver moduleDict -dict moduleName -string "Aerial" path -string "/Users/Logan/Library/Screen Savers/Aerial.saver" type -int 0

# Hot Corner -> bottom-left -> screen sleep
defaults write com.apple.dock "wvous-bl-corner" -int 10
defaults write com.apple.dock "wvous-bl-modifier" -int 0
# Hot Corner -> top-right -> screensaver
defaults write com.apple.dock "wvous-tr-corner" -int 5
defaults write com.apple.dock "wvous-tr-modifier" -int 0;

# Autohide dock
defaults write com.apple.dock autohide -int 1

# # Show battery percentage
# defaults read com.apple.menuextra.battery ShowPercent YES

# # ==============================================
# # Mouse and Trackpad
# # ==============================================

# # Three finger drag, regular trackpad
# defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool false

# # Three finger drag, bluetooth trackpad
# defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool false
