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
	--height=50%
	--prompt=' '
	--pointer='>>'"
set --export LF_ICONS "\
	di=:\
	fi=:\
	ln=:\
	or=:\
	ex=:\
	*.vimrc=:\
	*.viminfo=:\
	*.gitignore=:\
	*.c=:\
	*.cc=:\
	*.clj=:\
	*.coffee=:\
	*.cpp=:\
	*.css=:\
	*.d=:\
	*.dart=:\
	*.erl=:\
	*.exs=:\
	*.fs=:\
	*.go=:\
	*.h=:\
	*.hh=:\
	*.hpp=:\
	*.hs=:\
	*.html=:\
	*.java=:\
	*.jl=:\
	*.js=:\
	*.json=:\
	*.lua=:\
	*.md=:\
	*.php=:\
	*.pl=:\
	*.pro=:\
	*.py=:\
	*.rb=:\
	*.rs=:\
	*.scala=:\
	*.ts=:\
	*.vim=:\
	*.cmd=:\
	*.ps1=:\
	*.sh=:\
	*.bash=:\
	*.zsh=:\
	*.fish=:\
	*.tar=:\
	*.tgz=:\
	*.arc=:\
	*.arj=:\
	*.taz=:\
	*.lha=:\
	*.lz4=:\
	*.lzh=:\
	*.lzma=:\
	*.tlz=:\
	*.txz=:\
	*.tzo=:\
	*.t7z=:\
	*.zip=:\
	*.z=:\
	*.dz=:\
	*.gz=:\
	*.lrz=:\
	*.lz=:\
	*.lzo=:\
	*.xz=:\
	*.zst=:\
	*.tzst=:\
	*.bz2=:\
	*.bz=:\
	*.tbz=:\
	*.tbz2=:\
	*.tz=:\
	*.deb=:\
	*.rpm=:\
	*.jar=:\
	*.war=:\
	*.ear=:\
	*.sar=:\
	*.rar=:\
	*.alz=:\
	*.ace=:\
	*.zoo=:\
	*.cpio=:\
	*.7z=:\
	*.rz=:\
	*.cab=:\
	*.wim=:\
	*.swm=:\
	*.dwm=:\
	*.esd=:\
	*.jpg=:\
	*.jpeg=:\
	*.mjpg=:\
	*.mjpeg=:\
	*.gif=:\
	*.bmp=:\
	*.pbm=:\
	*.pgm=:\
	*.ppm=:\
	*.tga=:\
	*.xbm=:\
	*.xpm=:\
	*.tif=:\
	*.tiff=:\
	*.png=:\
	*.svg=:\
	*.svgz=:\
	*.mng=:\
	*.pcx=:\
	*.mov=:\
	*.mpg=:\
	*.mpeg=:\
	*.m2v=:\
	*.mkv=:\
	*.webm=:\
	*.ogm=:\
	*.mp4=:\
	*.m4v=:\
	*.mp4v=:\
	*.vob=:\
	*.qt=:\
	*.nuv=:\
	*.wmv=:\
	*.asf=:\
	*.rm=:\
	*.rmvb=:\
	*.flc=:\
	*.avi=:\
	*.fli=:\
	*.flv=:\
	*.gl=:\
	*.dl=:\
	*.xcf=:\
	*.xwd=:\
	*.yuv=:\
	*.cgm=:\
	*.emf=:\
	*.ogv=:\
	*.ogx=:\
	*.aac=:\
	*.au=:\
	*.flac=:\
	*.m4a=:\
	*.mid=:\
	*.midi=:\
	*.mka=:\
	*.mp3=:\
	*.mpc=:\
	*.ogg=:\
	*.ra=:\
	*.wav=:\
	*.oga=:\
	*.opus=:\
	*.spx=:\
	*.xspf=:\
	*.pdf=:\
	*.nix=:\
	"
#}}}

set fish_greeting

fish_vi_key_bindings

source "$HOME/.config/fish/abbreviations.fish"

# Custom header
# fm6000 -c $(shuf -e red green yellow blue magenta | head -n 1)
zoxide init fish | source
starship init fish | source
