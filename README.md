# dotfiles

This is collection of configuration files for a tools used in my day-to-day work.

I do preffer to have declarative configuration, than interactive one. So all the
files here are setup created and maintaned manually with it's pros and cons.

Any feedback is welcome!

## Setup bash

``` bash
cp bash/bash_profile ~/.bash_profile
cp bash/bashrc ~/.bashrc
cp bash/bash_functions ~/.bash_functions
```

## Setup tmux

``` bash
mkdir config/tmux
cp config/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

## Setup yabai

``` bash
mkdir ~/.config/{yabai,skhd}
cp config/yabai/yabairc ~/.config/yabai/yabairc
cp config/skhd/skhdrc ~/.config/skhd/skhdrc 
```

## Setup kitty

``` bash
mkdir ~/.config/kitty
cp config/kitty/kitty.conf ~/.config/kitty/kitty.conf
cp config/kitty/kitty.app.icns ~/.config/kitty/kitty.app.icns
```

## Setup alacritty

``` bash
mkdir -p ~/config/alacritty/themes
cp config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml 
cp config/alacritty/themes/github_dark.yaml ~/.config/alacritty/themes/github_dark.yaml
cp config/alacritty/themes/github_light.yaml ~/.config/alacritty/themes/github_light.yaml
```

## Setup wezterm

``` bash
mkdir ~/.config/wezterm
cp config/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua

## Setup VSCode

``` bash
cp vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
cp vscode/keybindings.json "$HOME/Library/Application Support/Code/User/keybindings.json"
```

## Setup vim

``` bash
mkdir -p ~/.vim
cp vim/vimrc ~/.vim/vimrc
```
