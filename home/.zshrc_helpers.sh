# Setting_fzf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/Downloads/fzf-git.sh/fzf-git.sh ] && source ~/Downloads/fzf-git.sh/fzf-git.sh

export FZF_DEFAULT_OPTS="-m --color=dark --bind ctrl-y:preview-up,ctrl-e:preview-down,ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(|hidden|)'"
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,venv,target
  --preview 'tree  -C {} | head -200'
  --walker-root ${HOME}"

# -- this will allow me to do <C-X>+<C-E> for
# passing the current command to nvim

autoload edit-command-line
zle -N edit-command-line

# keybindings

setxkbmap -option "ctrl:nocaps"
bindkey -M viins 'jj' vi-cmd-mode
bindkey "^X^E" edit-command-line

# aliases
alias ll="ls -alh"

# useful_functions
function init_server() {
    PORT=7777
    if [[ $1 == "" ]]; then
        python3 -m http.server
        python3 -m http.server --port $PORT
    else
        python3 -m http.server --directory "$1" $PORT
    fi
}
function gck() {
    git branch | sed -E 's/^.//g' | awk '{print $1}' | fzf --preview 'git show {}' --print0 | xargs -0 git checkout
}

function gri() {

    # test -d "$(find . -maxdepth 1 -type d -name "*.git*")" && echo "exist"
    if [[ -d "$(find . -maxdepth 1 -type d -name "*.git*")" && -n $1 ]]; then
        echo "Executing rebase"
        git -c "rebase.instructionFormat=(%an <%ae>) %s" rebase -i "$1"
    else
        echo "This is not a git repository or not hash passed"
    fi

}

#
#useful commands
# getting an specific file or folder from github
# git clone --no-checkout --depth=1 <repository_url>
# git checkout <branch> -- <    [folder|file] wanted>
