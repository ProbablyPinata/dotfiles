export HISTSIZE=10000
export HISTFILESIZE=10000

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
alias t="zmx"

function ts() {
  output=$(t | awk '{for(i=1;i<=NF;i++) if($i ~ /^name=/) {split($i,a,"="); print a[2]}}' | fzf \
    --print-query \
    --expect=ctrl-n \
    --height=80% \
    --reverse \
    --prompt="zmx> " \
    --header="Enter: select | Ctrl-N: create new" \
    --preview='zmx history {1}' \
    --preview-window=right:60%:follow \
  )

  query=$(echo "$output" | sed -n '1p')
  key=$(echo "$output" | sed -n '2p')
  selected=$(echo "$output" | sed -n '3p')

  if [[ "$key" == "ctrl-n" && -n "$query" ]]; then # indicated new session with ctrl-n
    session_name="$query"
  elif [[ $rc -eq 0 && -n "$selected" ]]; then # selected exicting session
    session_name=$selected
  elif [[ -n "$query" ]]; then # unrecognised query
    session_name="$query"
  else
    return 130
  fi

  zmx attach "$session_name"
}



function p() {
  if [[ -z "$1" ]]; then
    echo "Usage: p <search-term>"
    return 1
  fi

  keepassxc-cli clip ~/secrets/main.kdbx "$*"
}

function e() {
  if [[ -z "$1" ]]; then
    echo "Usage: p <search-term>"
    return 1
  fi

  keepassxc-cli search ~/secrets/main.kdbx "$*"
}

# Shell wrapper to open and navigate using yazi.
# https://yazi-rs.github.io/docs/quick-start/#shell-wrapper
function yaz() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  IFS= read -r -d '' cwd < "$tmp"
  [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
  rm -f -- "$tmp"
}

function pdf() {
  zathura "$1" & disown
}


autoload -Uz vcs_info # enable version control info, in variable vcs_info_msg_0 to be used in prompt

autoload -Uz +X compinit && compinit
## case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

if command -v zmx &> /dev/null; then
  eval "$(zmx completions zsh)"
fi

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


eval "$(zoxide init zsh --hook prompt)"

export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"

eval "$(starship init zsh)"

PATH=$PATH:/Users/stefan/comp50007/pintos_task0_sv823/src/utils
PATH=$PATH:/Users/stefan/mac-i686-elf-gcc-binaries/bin
PATH=$PATH:/Applications/sioyek.app/Contents/MacOS

export PATH="/opt/homebrew/opt/llvm@18/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm@18/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm@18/include"
export CMAKE_PREFIX_PATH="/opt/homebrew/opt/llvm@18"
export CXX="/opt/homebrew/opt/llvm@18/bin"



clear

# LAST THING IN THE ZSHRC:
#
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Placed here to allow **
eval "$(fzf --zsh)"

[ -f "/Users/stefan/.ghcup/env" ] && . "/Users/stefan/.ghcup/env" # ghcup-env
export PATH="$HOME/.local/bin:$PATH"
