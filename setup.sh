#!/bin/bash

# Name: Akshath Jain
# Date: 6/4/20
# Purpose: Download appropriate tools and move files into the correct place


# Step 0)
# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Step 1)
# Symlink all dot files to to the home directory
files=(".zshrc")
pwd=$(pwd)
for f in ${files[@]}; do
    ln -sf ${pwd}/${f} ${HOME}/${f}
done



# Step 2)
# Clone and symlink the spaceship theme for zsh
rm -rf ${ZSH}/custom/themes/spaceship-prompt
rm -f ${ZSH}/custom/themes/spaceship.zsh-theme
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH}/custom/themes/spaceship-prompt
ln -s ${ZSH}/custom/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH}/custom/themes/spaceship.zsh-theme