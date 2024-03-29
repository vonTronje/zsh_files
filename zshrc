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

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.rbenv/bin:$PATH

export LC_ALL=en_US.UTF-8

eval "$(rbenv init -)"

export EDITOR=vim

alias be='bundle exec'

alias kube-staging='kubectl config use-context staging && aws-vault exec logistics-staging'
alias kube-production='kubectl config use-context production && aws-vault exec logistics-production'

alias logistics-pod='kubectl exec -it deploy/logistics -- bash'
alias ms-api-pod='kubectl exec -it deploy/api-console -n cx-api -- bash'

view_secrets() {
  kubectl get secret $1 -o go-template='{{range $k,$v := .data}}{{printf "%s: " $k}}{{if not $v}}{{$v}}{{else}}{{$v | base64decode}}{{end}}{{"\n"}}{{end}}'
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export KUBECONFIG="/Users/hagenm/.kube/config:/Users/hagenm/.kube/minikube-config:/Users/hagenm/.kube/staging-config:/Users/hagenm/.kube/production-config"

source ~/.work_credentials
