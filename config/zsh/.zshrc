#!/usr/bin/zsh

#Vim keybindings
bindkey -v
# export KEYTIMEOUT=1

#Antidote Plugin manager
# Using syntax
# Using vi-mode not right now
# Only using syntax highlighting at the moment
source ${ZDOTDIR}/antidote/antidote.zsh
antidote load ${ZDOTDIR}/.zsh_plugins.txt


#Options
setopt HIST_SAVE_NO_DUPS
setopt CORRECT
setopt EXTENDED_HISTORY
setopt ALWAYS_TO_END



#
#load zsh functions

#Edit command in editor
autoload -Uz edit-command-line
zle -N edit-command-line 
bindkey -M vicmd '^v' edit-command-line

#vim navigation completition
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'l' vi-forward-char
zstyle ':completion:*' menu select
#zstyle ':completion:*' complete-options true


#zsh autocompletition
autoload -U compinit
compinit
_comp_options+=(globdots)

#zsh autosuggestion
bindkey '^f' autosuggest-accept


# aliases
source "${ZDOTDIR}/.aliases"

#prompt
source "${ZDOTDIR}/.git_prompt.zsh"


#personal_config
source "${ZDOTDIR}/.vim_mode_config.zsh"

#bob_nvim
source "${ZDOTDIR}/.bob"

#plugins_config

# own_config
source "${ZDOTDIR}/.zshrc_helpers.sh"

# adding binaries
export PATH="/home/jppm/.local/share/bob/nvim-bin/:$PATH"


# Put by fzf
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh




