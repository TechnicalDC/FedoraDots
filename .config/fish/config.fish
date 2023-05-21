# Exports {{{
set --export SHELL /usr/bin/fish
set --export ANDROID_HOME $XDG_DATA_HOME/android
set --export EDITOR "nvim"
set --export VISUAL "nvim"
set --export TERMINAL "st"
set --export PAGER "less"
set --export PATH  $PATH $HOME/.scripts/
set --export PATH  $PATH $HOME/.local/bin/
set --export FZF_DEFAULT_OPTS "--layout=reverse
	--preview='bat {} --color always --style=plain'
	--border double
	--height=100%
	--prompt=' '
	--pointer='>>'"
set --export ROFI_MINI $HOME/.config/rofi/themes/minimal/popup.rasi
set --export ROFI_LIST $HOME/.config/rofi/themes/minimal/list.rasi
#}}}

set fish_greeting

fish_vi_key_bindings

source "$HOME/.config/fish/abbreviations.fish"

# Custom header
# fm6000 -c $(shuf -e red green yellow blue magenta | head -n 1)
zoxide init fish | source
starship init fish | source
