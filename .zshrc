export EDITOR=nvim 
export VISUAL="$EDITOR"
export HOMEBREW_NO_EMOJI=1
export BAT_THEME="ansi"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# workaround for "unknown" ghostty terminal
if [[ "$TERM_PROGRAM" == "ghostty" ]]; then
    export TERM=xterm-256color
fi

alias icloud="cd '/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs'"
alias ls="eza"
alias config='$(which git) --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias n="nvim"

# Shell wrapper to open and navigate using yazi.
# https://yazi-rs.github.io/docs/quick-start/#shell-wrapper
function yaz() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

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
bindkey '^ ' autosuggest-accept


eval "$(fzf --zsh)"
eval "$(zoxide init zsh --hook prompt)"

export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

eval "$(starship init zsh)"

PATH=$PATH:/Users/stefan/comp50007/pintos_task0_sv823/src/utils
PATH=$PATH:/Users/stefan/mac-i686-elf-gcc-binaries/bin
PATH=$PATH:/Applications/sioyek.app/Contents/MacOS

clear
fastfetch --logo-type kitty --logo-width 30 --logo "/Users/stefan/Library/Mobile Documents/com~apple~CloudDocs/wallpapers/elephant_bw.jpeg"


# LAST THING IN THE ZSHRC:
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


[ -f "/Users/stefan/.ghcup/env" ] && . "/Users/stefan/.ghcup/env" # ghcup-env
