#!/bin/bash

ZSH_FILES=$PWD

curl -L http://install.ohmyz.sh | sh
rm $HOME/.zshrc 2>/dev/null
rm $HOME/.zshrc-e 2>/dev/null

ln -s $ZSH_FILES/zshrc $HOME/.zshrc

cp $ZSH_FILES/hagen.zsh-theme $HOME/.oh-my-zsh/themes/hagen.zsh-theme

chsh -s /bin/zsh
/bin/zsh
source $HOME/.zshrc
