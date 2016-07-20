# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="hagen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git goto)

source $ZSH/oh-my-zsh.sh

# Disable autocorrection
unsetopt correct_all

# Customize to your needs...
export GOPATH=$HOME/code/go

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:$HOME/code/kaeuferportal/command_line_tools_kp/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.rbenv/bin:$PATH


eval "$(rbenv init -)"

export EDITOR=vim
alias be='bundle exec'
alias cdgo='cd $GOPATH/src/codevault.io/go_projects'
alias deploy='$HOME/code/kaeuferportal/deployment/deploy_app.sh deploy'
alias connect='$HOME/code/kaeuferportal/deployment/deploy_app.sh connect'
