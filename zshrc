# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="agnoster"
eval "$(starship init zsh)"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Config
alias rc="nvim ~/.zshrc"
alias awsconfig="code ~/.aws"
alias sshconfig="code ~/.ssh"

# Tool shortcuts
alias p=pulumi
alias k="kubectl"

# Typos
alias dc="cd"
alias docekr="docker"
alias gt="git"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/Users/andrew/.bun/_bun" ] && source "/Users/andrew/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export AWS_PROFILE="andrew"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOPATH/bin

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
alias kn="kubectl ns"
alias kc="kubectl ctx"
# alias kc="kubectx"
# alias kn="kubens"
# alias kc="kubie ctx"
# alias kn="kubie ns"
alias pods="kubectl get pods"
alias pdos="kubectl get pods"
alias deploy="kubectl get deploy"
alias svc="kubectl get svc"
alias nodes="kubectl get nodes"
alias kwp="watch kubectl get pods"
alias kwnp="watch kubectl get nodes,pods"
alias krrd="kubectl rollout restart deployment"
alias kg="kubectl get"
alias kl="kubectl logs"
alias klf="kubectl logs -f"

# Love2D for Lua game development
export PATH=$PATH:/Applications/love.app/Contents/MacOS/

WORK_OVERRIDES="$HOME/.zshrc.fcx"
if [ -f "$WORK_OVERRIDES" ]; then
  source "$WORK_OVERRIDES"
#   echo "Successfully sourced $WORK_OVERRIDES"
fi
