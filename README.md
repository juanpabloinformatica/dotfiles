# Description

Mine Configuration files, and how the manage of it will work.

## Dotfiles

- Here is how the folder structure of the dotfiles will be

```
.
├── .bake.toml
├── config
│   ├── alacritty
│   │   ├── alacritty.toml
│   │   └── themes
│   ├── git
│   │   └── .gitconfig
│   ├── i3
│   │   └── config
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   ├── lua
│   │   └── README.md
│   ├── tmux
│   │   ├── personal_tmux_session.txt
│   │   ├── plugins
│   │   ├── .tmux
│   │   └── tmux.conf
│   ├── vim
│   │   ├── .netrwhist
│   │   └── vimrc
│   └── zsh
│       ├── .aliases
│       ├── antidote
│       ├── .bob
│       ├── .extending_git_fzf.sh
│       ├── .git_prompt.zsh
│       ├── tags
│       ├── .vim_mode_config.zsh
│       ├── .vi_mode_config.zsh
│       ├── .zcompdump
│       ├── .zcompdump-jppm-5.9
│       ├── .zcompdump-jppm-5.9.zwc
│       ├── .zhistory
│       ├── .zsh_plugins.txt
│       ├── .zsh_plugins.zsh
│       ├── .zshrc
│       └── .zshrc_helpers.sh
├── dotfiles.mk
├── .gitmodules
├── home
│   └── .zshenv
├── pictures
│   ├── gruvbox_tux.png
│   ├── samurai_gruvbox.jpg
│   └── samurai.jpg
├── README.md
└── test.mk
16 directories, 34 files
```

## How to use it

- For putting all the config files where they should be, there are two possibiliites.
  but first

  - Clone the repository `git clone https://github.com/juanpabloinformatica/dotfiles.git `

### First one (favorite)
```
# Execute 
make -f dotfiles.mk
```

### Second one

```
# GNU stow needs to be installed!!!!
#execute
stow --target=$HOME $HOME/Documents/home
stow --target=$HOME/.config $HOME/Documents/config
stow --target=$HOME/Pictures $HOME/Documents/Pictures
```
