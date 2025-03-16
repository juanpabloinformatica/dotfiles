# Description

Mine Configuration files, and how the manage of it will work.

## Dotfiles

- Here is how the folder structure of the dotfiles will be

```
.
├── config
│   ├── alacritty
│   │   └── alacritty.toml
│   ├── bat
│   ├── git
│   │   └── .gitconfig
│   ├── i3
│   │   └── config
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   ├── lua
│   │   │   ├── config
│   │   │   │   └── nvim_config
│   │   │   │       ├── keymaps.lua
│   │   │   │       ├── lazy.lua
│   │   │   │       └── options.lua
│   │   │   └── plugins
│   │   │       ├── init.lua
│   │   │       └── plugins_configs
│   │   │           ├── lualine.lua
│   │   │           ├── null-ls.lua
│   │   │           ├── nvim-cmp.lua
│   │   │           ├── nvim-jdtls.lua
│   │   │           ├── nvim-lspconfig.lua
│   │   │           ├── nvim-tree.lua
│   │   │           └── nvim-treesitter.lua
│   │   └── README.md
│   └── vim
│       └── vimrc
├── home
│   ├── .gitconfig
│   ├── .tmux.conf
│   ├── .zshrc
│   └── .zshrc_helpers.sh
├── pictures
│   ├── gruvbox_tux.png
│   ├── samurai_gruvbox.jpg
│   └── samurai.jpg
├── README.md
└── tags

15 directories, 27 files
```

## How to use it

- For putting all the config files where they should be, there are two possibiliites.
  but first

  - Clone the repository `git clone https://github.com/juanpabloinformatica/dotfiles.git `

### First one

```
 #clone repository with pc_setup scripts
 git clone https://github.com/juanpabloinformatica/pc_setup.git
 #cd into it
 cd pc_setup
 #execute
 bash ./src/script_dotfiles.sh $(whoami)
```

### Second one

```
# GNU stow needs to be installed!!!!
#execute
stow --target=$HOME $HOME/Documents/home
stow --target=$HOME/.config $HOME/Documents/config
stow --target=$HOME/Pictures $HOME/Documents/Pictures
```
