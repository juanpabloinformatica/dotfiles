#bling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
  vcs_info
}
# Enable substitution in the prompt.
setopt prompt_subst
#     # Config for the prompt. PS1 synonym.
prompt='[%n: %~ ] ${vcs_info_msg_0_}-> '
