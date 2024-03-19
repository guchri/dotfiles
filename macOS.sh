#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

# Source: https://macos-defaults.com/

###############################################################################
# General
###############################################################################

# Set scroll as traditional instead of natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false && killall Finder

# Removes the delay for popping folders open
defaults write NSGlobalDomain com.apple.springing.delay -float 0.5

# Remove the spring loading delay for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Use Dark menu bar and Dock
defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Disable flashing the screen when an alert sound occurs (accessibility)
defaults write NSGlobalDomain com.apple.sound.beep.flash -bool false

# Set alert volume
# Slider level:
#  "75%": 0.7788008
#  "50%": 0.6065307
#  "25%": 0.4723665
defaults write NSGlobalDomain com.apple.sound.beep.volume -float 0.38424229621887207

###############################################################################
# Finder
###############################################################################

# Show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool true

# Show path bar
defaults write com.apple.finder "ShowPathbar" -bool "true" && killall Finder

# Show file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool true && killall Finder

# Folders are listed first in any Finder window
defaults write com.apple.finder _FXSortFoldersFirst -bool true && killall Finder

# Set Force Click with one finger
defaults write com.apple.trackpad.forceClick -bool true

# Set 
defaults write -g com.apple.keyboard.fnState 1


# Allow Handoff between this Mac and your iCloud devices
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd ActivityAdvertisingAllowed -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd ActivityReceivingAllowed -bool true

###############################################################################
# Dock
###############################################################################

# Icon size of Dock items
defaults write com.apple.dock tilesize -int 46

# Minimization effect: 'genie', 'scale', 'suck'
defaults write com.apple.dock mineffect -string 'scale'

# Dock orientation: 'left', 'bottom', 'right'
defaults write com.apple.dock 'orientation' -string 'left'

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
write com.apple.dock autohide-time-modifier -float 0 && killall Dock

# Group windows by application
defaults write com.apple.dock "expose-group-apps" -bool "true" && killall Dock

###############################################################################
# TextEdit
###############################################################################

# Disable rich text by default
defaults write com.apple.TextEdit "RichText" -bool "false" && killall TextEdit


# Get the absolute path to the image
# IMAGE_PATH="${HOME}/dotfiles/settings/Desktop.png"

# AppleScript command to set the desktop background
# osascript <<EOF
# tell application "System Events"
#     set desktopCount to count of desktops
#     repeat with desktopNumber from 1 to desktopCount
#         tell desktop desktopNumber
#             set picture to "$IMAGE_PATH"
#         end tell
#     end repeat
# end tell
# EOF
