#!/bin/bash

git clone --depth=1 https://github.com/ryanoasis/nerd-fonts.git /home/devuser/Downloads/nerd-fonts
cd /home/devuser/Downloads/nerd-fonts
./install.sh
cd /home/devuser/
rm -rf /home/devuser/Downloads/nerd-fonts

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k