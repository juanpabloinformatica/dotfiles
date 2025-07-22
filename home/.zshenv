#XDG USER DIRECTORIES
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_DATA_DIRS="/usr/local/share:/usr/share"
export XDG_CONFIG_DIRS="/etc/xdg"

export EDITOR="nvim"
export VISUAL="nvim"
# export EDITOR="vim"
# export VISUAL="vim"

# Zsh
export ZDOTDIR="${XDG_CONFIG_HOME}/zsh"
export HISTFILE="${ZDOTDIR}/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

