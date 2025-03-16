# Description
Mine Configuration files, and how the manage of it will work.

## Dotfiles

- Here is how the folder structure of the dotfiles will be

```
dotfiles/
  |__pictures/
    |__.gruvbox_tux.png
  |__home/
    |__.gitconfig
    |__.zshrc
    |__.tmux.conf
  |__config/
    |__nvim/
    |__init.lua
    |__lazy-lock.json
    |__README.md
    |__lua/
      |__config/
      |__lua/
    |__vim/
      |__vimrc
    |__alacritty/
      |__alacritty.toml
    |__i3/
      |__config
  |__steps.md
```

## How this will work

- So, this will works thanks to gnu stow, the idea is simple, in the dotfiles directory
  I will have the config files of my machine, the **$HOME** folder will have all the config-files that are normally situated in the \$HOME path, then the config folder will have all
  the config-files normally situated in **\$HOME/.config**.

## How to use it

- Once the repository is clonated
- The following commands will need to be executed
```

git clone git@github.com:juanpabloinformatica/dotfiles.git $HOME/Documents/
stow --target=$HOME $HOME/Documents/home
stow --target=$HOME/.config $HOME/Documents/config
stow --target=$HOME/Pictures $HOME/Documents/Pictures
```
- This will clone and put the different files where they should be besides.
  If a change is done, then will be easy to update everyfile and see reflected
  the changes.



