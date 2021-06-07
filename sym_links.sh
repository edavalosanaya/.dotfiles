#!/bin/bash 

# i3 configuration
ln -sf $HOME/.dotfiles/i3 $HOME/.config/ # directory

# Keybinding configuration
ln -sf $HOME/.dotfiles/.xmodmaprc $HOME/.xmodmaprc # file

# vim configuration
ln -sf $HOME/.dotfiles/.vimrc $HOME/.vimrc # file

# fonts configuration 
ln -sf $HOME/.dotfiles/.fonts $HOME/ # directory

# gtk-2 configuation
ln -sf $HOME/.dotfiles/.gtkrc-2.0 $HOME/.gtkrc-2.0

# gtk-3 configuration
ln -sf $HOME/.dotfiles/settings.ini $HOME/.config/gtk-3.0/settings.ini
