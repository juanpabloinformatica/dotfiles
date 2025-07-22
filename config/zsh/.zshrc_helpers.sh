#!/bin/bash
# ---- Setting_fzf -----

[ -f "${HOME}/.fzf.zsh" ] && source "${HOME}/.fzf.zsh"
[ -f "${HOME}/Downloads/software/fzf-git.sh/fzf-git.sh" ] && source "${HOME}/Downloads/software/fzf-git.sh/fzf-git.sh"

# Adding nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

export FZF_DEFAULT_OPTS="-m --color=dark --bind ctrl-y:preview-up,ctrl-e:preview-down,ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down"
export FZF_CTRL_T_OPTS="--preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(|hidden|)'"
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,venv,target
  --preview 'tree  -C {} | head -200'
  --walker-root ${HOME}"

# ---- ------------------------

#Change keymaps
setxkbmap -option "ctrl:nocaps"

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

# function fzf_git_check() {
#   git rev-parse HEAD > /dev/null 2>&1 && return
#   # echo "NOT GIT REPOSITORY"
#   [[ -n $TMUX ]] && tmux display-message "Not in a git repository"
#   return 1
# }
#Open lazygit
# function open_lazygit(){
#     git rev-parse HEAD &> /dev/null && command -v lazygit &> /dev/null && lazygit || echo -e "NOT IN A GIT REPOSITORY\0"
#      zle .accept-line
# }
#
# zle -N open_lazygit
# bindkey '^g' open_lazygit

export PATH="$HOME/.local/share/nvim/mason/bin:${PATH}"

#
#useful commands
# getting an specific file or folder from github
# git clone --no-checkout --depth=1 <repository_url>
# git checkout <branch> -- <    [folder|file] wanted>
