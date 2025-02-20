# If you c
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/home/jppm/.local/share/bob/v0.10.1/bin:$PATH"
# export PATH="/home/jppm/.tmux/plugins/tmux-resurrect/scripts:$PATH"

#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# keybindings
setxkbmap -option "ctrl:nocaps"
bindkey -M viins 'jj' vi-cmd-mode

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
# export EDITOR=nvim
export EDITOR=vim


# Load Angular CLI autocompletion.
# source <(ng completion script)

#useful commands
#open fzf in the folder i belieave and then open nvim in there
# ➜  ~ nvim $(fd rest_api | fzf)
#
# alias stpr="cp $HOME/.config/scripts/python/project_setup.py $PWD ; python3 project_setup.py"
# alias ls="exa --icons"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias ll="exa --long --icons "
# for fzf
# Configure FZF.
#
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND="rg --files --hidden --follow --glob '!.git'"
  export FZF_DEFAULT_OPTS='-m --color=dark'
  export FZF_CTRL_T_OPTS="--preview='less {}' --height=100% --bind shift-up:preview-page-up,shift-down:preview-page-down"
fi

arch=`uname -m | tr '[a-z]' '[A-Z]'`
# Must be hardcoded to load PREFIX from root whithout expanding root's $HOME
PREFIX=/home/jppm/X86_64
export PREFIX
export MANPATH=$PREFIX/usr/share/man:$MANPATH
export PATH=$PREFIX/usr/bin:$PREFIX/usr/sbin:$PREFIX/usr/local/bin:$PREFIX/usr/local/sbin:$HOME/.local/bin:$PATH
export OSM_CACHE_DIR=$PREFIX/var/cache
#export IBPATH=$PREFIX/usr/sbin

# to compile ibsim
#export IB_DEV_DIR=$HOME/work/infiniband/git/bull/atlas/repositories/management

export LD_LIBRARY_PATH=$PREFIX/usr/lib:$PREFIX/usr/lib64:$LD_LIBRARY_PATH
export IBVIEW_LIBDIR=$PREFIX/usr/share/perl5/vendor_perl
export IBGRAPH_LIBDIR=$PREFIX/usr/share/perl5/vendor_perl
export IBMS_GRAPHITE_LIBDIR=$PREFIX/usr/share/perl5/vendor_perl

# for make check_perl_syntax
#export PERL5LIB=$PREFIX/usr/lib/perl/5.24.1/x86_64-linux-thread-multi
export PERL5LIB=$PREFIX/usr/lib/perl/`perl -e 'printf "%vd", $^V;'`/x86_64-linux-thread-multi

export CC=gcc

# bash completion
[ -e $PREFIX/etc/bash_completion.d/ibview ] && . $PREFIX/etc/bash_completion.d/ibview
[ -e $PREFIX/etc/bash_completion.d/ibgraph ] && . $PREFIX/etc/bash_completion.d/ibgraph
[ -e $PREFIX/etc/bash_completion.d/ibsnmp ] && . $PREFIX/etc/bash_completion.d/ibsnmp
[ -e $PREFIX/etc/bash_completion.d/ibms-graphite ] && . $PREFIX/etc/bash_completion.d/ibms-graphite

export IBVIEW_CONF_FILE=$PREFIX/etc/ibms/ibview.conf
export IBMSDB_CONF_FILE=$PREFIX/etc/ibms/ibms_db.conf
export CLUSTERDB_CONF_FILE=$PREFIX/etc/ibms/cluster_db.conf

export PYTHONPATH=$PREFIX/usr/lib64/python2.7/site-packages

alias ibms-database='sudo -E PREFIX=$PREFIX LD_LIBRARY_PATH=$LD_LIBRARY_PATH $PREFIX/usr/share/ibms/systemd/ibms-database.sh'
alias ibms-database-filesystem='sudo -E PREFIX=$PREFIX LD_LIBRARY_PATH=$LD_LIBRARY_PATH $PREFIX/usr/share/ibms/systemd/ibms-database-filesystem.sh'

export MIBDIRS=/usr/share/mibs/ietf:/usr/share/snmp/mibs
export SNMP_PERSISTENT_DIR=/tmp

# export PATH=/usr/java/jdk1.8.0_181-amd64/bin:$PATH

# from reddit https://www.reddit.com/r/vim/comments/7tt4ts/painless_copy_paste_between_tmux_vim_and_system/
# for easier copy paste
# yanktoclipboard(){
#     echo $BUFFER | xsel -i -b
# }
# pastefromclipboard(){
#     RBUFFER=$(xsel -o -b </dev/null)$RBUFFER
# }
# zle -N yanktoclipboard
# zle -N pastefromclipboard
# bindkey -a 'yy' yanktoclipboard
# bindkey -a 'p' pastefromclipboard
