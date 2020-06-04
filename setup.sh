#!/bin/bash

# Name: Akshath Jain
# Date: 6/4/20
# Purpose: Download appropriate tools and move files into the correct place


# Step 0)
Install oh-my-zsh
printf "Installing oh-my-zsh\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



# Step 1)
# Symlink all dot files to to the home directory
printf "\nTransferring dotfiles"
files=(".zshrc")
pwd=$(pwd)
for f in ${files[@]}; do
    ln -sf ${pwd}/${f} ${HOME}/${f}
done



# Step 2)
# Clone and symlink the spaceship theme for zsh
printf "\nInstalling zsh themes"
rm -rf ${ZSH}/custom/themes/spaceship-prompt
rm -f ${ZSH}/custom/themes/spaceship.zsh-theme
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH}/custom/themes/spaceship-prompt
ln -s ${ZSH}/custom/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH}/custom/themes/spaceship.zsh-theme



# Step 3)
# Install Homebrew
printf "\nInstalling Homebrew\n"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"



# Step 4)
# Install iTerm2
printf "\nInstalling iTerm2\n"
brew cask install iterm2



# Step 5)
# Specify iIterm2 to get its preferences from this directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string ${pwd}/iterm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true