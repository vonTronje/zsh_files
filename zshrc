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
export PATH=$PATH:$HOME/code/codevault.io/kaeuferportal/command_line_tools_kp/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/.rbenv/bin:$PATH

if [ -f ~/.docker/config.json ] ; then
    read email token <<< $(ruby -e "require 'json'; require 'base64'; string = File.read(ENV['HOME'] + '/.docker/config.json'); hash = JSON.parse(string); credentials = hash['auths']['registry.codevault.io']['auth']; email, token = Base64.decode64(credentials).split(':'); puts email + ' ' + token")

    export DOCKER_LOGIN=$email
    export GITLAB_ACCESS_TOKEN=$token
else
    echo 'DOCKER_LOGIN and GITLAB_ACCESS_TOKEN could not be automatically set. Are you logged in to registry.codevault.io via Docker?'
fi

eval "$(rbenv init -)"

export EDITOR=vim
alias be='bundle exec'
alias cdgo='cd $GOPATH/src/codevault.io/go_projects'
alias deploy='$HOME/code/codevault.io/kaeuferportal/deployment/deploy_app.sh deploy'
alias connect='$HOME/code/codevault.io/kaeuferportal/deployment/deploy_app.sh connect'
