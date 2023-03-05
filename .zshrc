export ZDOTDIR="$HOME/.config/zsh"
export PATH="$PATH:$HOME/.scripts/:$HOME/.local/bin"
export EDITOR="nvim"
export VISUAL="nvim"
export TERMINAL="st"
export PAGER="less"
export FZF_DEFAULT_OPTS="--layout=reverse
	--preview='bat {} --color always --style=plain'
	--border double
	--prompt=' '
	--pointer='>>'"

# Less Colors
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 0; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

# The following lines were added by compinstall
zstyle ':completion:*' completer _ignored _approximate
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' squeeze-slashes true
zstyle :compinstall filename '/home/dilip/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000
# End of lines configured by zsh-newuser-install

# Plugins
source $HOME/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Plugins Configuration
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

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

# Custom Function
fdo () {
	CHOICE=$(fd -t f $1 $2 | fzf)
}

# Vi Mode
bindkey -v

# zoxide for autojumping
eval "$(zoxide init zsh)"

# starship prompt
eval "$(starship init zsh)"
