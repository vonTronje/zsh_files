#!/bin/bash

# curl -L http://install.ohmyz.sh | sh
ZSH_FILES=$PWD

ln -s $ZSH_FILES/zshrc $HOME/.zshrc
#
cp $ZSH_FILES/themes/hagen.zsh-theme $HOME/.oh-my-zsh/themes/hagen.zsh-theme
cp -r $ZSH_FILES/custom/plugins/goto $HOME/.oh-my-zsh/custom/plugins/goto

source $HOME/.zshrc
