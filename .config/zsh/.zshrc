# Created by newuser for 5.9

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# For Vim's bad habits
alias :q='exit'
alias :wq='exit'
alias :x='exit'

# Simple aliases
alias cp='cp -iv'
alias rm='rm -iv'
alias mv='mv -iv'
alias exa="exa --color=always --icons"
alias l="exa --color=always --icons"
alias ls="ls --color=auto"
alias la='exa -a --color=always --icons'
alias ll='exa -l --color=always -h --icons --tree --level=1'
alias all='exa -al --color=always -h --icons --tree --level=1'
alias cat="bat"
alias n="nvim"
alias di="sudo dnf install"
alias du="sudo dnf update"
alias dU="sudo dnf upgrade"
alias ds="sudo dnf search"
alias dr="sudo dnf remove"
alias dot="git --git-dir=$HOME/FedoraDots.git --work-tree=$HOME"
alias tmux="tmux -a || tmux"
alias ga="git add"
alias gs="git stage"
alias gS="git status"
alias gc="git commit -m"
alias gp="git push"
alias gP="git pull"

set shellopts '-euy'

# Plugins
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/plugins/forgit/forgit.plugin.zsh

# Vi Mode
bindkey -v

# zoxide for autojumping
eval "$(zoxide init zsh)"

# starship prompt
eval "$(starship init zsh)"
