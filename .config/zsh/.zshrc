# Created by newuser for 5.9
export ZDOTDIR="$HOME/.config/zsh"
export PATH="$PATH:$HOME/.scripts/:$HOME/.local/bin"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export PAGER="less"
export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_DEFAULT_OPTS="--layout=reverse
	--preview='bat {} --color always --style=plain'
	--border double
	--prompt=' '
	--pointer='>>'"

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

# For Vim's bad habits
alias :q='exit'
alias :wq='exit'
alias :x='exit'

# Simple aliases
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias exa="exa --color=always --icons"
alias l="exa --color=always --icons"
alias ls="ls --color=auto"
alias la='exa -a --color=always --icons'
alias ll='exa -l --color=always -h --icons --tree --level=1'
alias all='exa -al --color=always -h --icons --tree --level=1'
alias cat="bat"
alias n="nvim"
alias install="sudo dnf install"
alias update="sudo dnf update"
alias upgrade="sudo dnf upgrade"
alias search="sudo dnf search"
alias remove="sudo dnf remove"
alias dot="git --git-dir=$HOME/FedoraDots.git --work-tree=$HOME"
alias tmux="tmux -a || tmux"
alias ga="git add"
alias gs="git stage"
alias gS="git status"
alias gc="git commit -m"
alias gp="git push"
alias gP="git pull"

# Vi Mode
bindkey -v

# zoxide for autojumping
eval "$(zoxide init zsh)"

# starship prompt
eval "$(starship init zsh)"
