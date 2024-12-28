export EDITOR=nvim
export VISUAL="$EDITOR"
export HOMEBREW_NO_EMOJI=1
export BAT_THEME="ansi"
export STARSHIP_CONFIG=~/.config/starship/starship.toml


alias icloud="cd '/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs'"
alias ls="eza"
alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# takes the filename of a pdf and outputs the optimized (compressed and stripped of metadata) filename.cleaned.pdf
function clean_pdf() {
    gs -sDEVICE=pdfwrite -dPDFSETTINGS=/prepress -dCompatibilityLevel=1.7 -r75 -dNOPAUSE -dQUIET -dBATCH -sOutputFile="$1.cleaned.pdf" "$1.pdf"
    mat2 --verbose -L --inplace "$1.cleaned.pdf"
    qpdf --verbose --flatten-rotation --flatten-annotations=all --optimize-images --min-version=1.7 --linearize "$1.cleaned.pdf" "$1.cleaned.linear.pdf"
    # analyse resulting file:
    mat2 -s "$1.cleaned.linear.pdf"
    exiftool "$1.cleaned.linear.pdf"
    qpdf --check "$1.cleaned.linear.pdf"
}


function view() { nohup zathura $1 & }


autoload -Uz vcs_info # enable version control info, in variable vcs_info_msg_0 to be used in prompt

autoload -Uz +X compinit && compinit
## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# complete dotfiles
_comp_options+=(globdots) # With hidden files

# enable vi mode
# bindkey -v
# exit insert mode with jk/kj 
# bindkey jk vi-cmd-mode
# bindkey kj vi-cmd-mode
# export KEYTIMEOUT=1
# Improved vi mode with zsh-vi-mode
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh


source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^l' autosuggest-accept


eval "$(fzf --zsh)"
eval "$(zoxide init zsh --cmd cd --hook prompt)"

export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

eval "$(starship init zsh)"

PATH=$PATH:/Users/stefan/comp50007/pintos_task0_sv823/src/utils
PATH=$PATH:/Users/stefan/mac-i686-elf-gcc-binaries/bin

fastfetch

# LAST THING IN THE ZSHRC:
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f "/Users/stefan/.ghcup/env" ] && . "/Users/stefan/.ghcup/env" # ghcup-env