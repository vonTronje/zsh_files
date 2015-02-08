#!/bin/bash

ZSH_FILES=$PWD

curl -L http://install.ohmyz.sh | sh
rm $HOME/.zshrc
rm $HOME/.zshrc-e

ln -s $ZSH_FILES/zshrc $HOME/.zshrc
#
cp $ZSH_FILES/hagen.zsh-theme $HOME/.oh-my-zsh/themes/hagen.zsh-theme
cp -r $ZSH_FILES/goto $HOME/.oh-my-zsh/custom/plugins/goto

source $HOME/.zshrc
