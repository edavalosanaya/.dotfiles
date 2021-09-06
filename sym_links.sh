#!/bin/bash 

# i3 configuration
ln -sf $HOME/.dotfiles/i3 $HOME/.config/ # directory

# Keybinding configuration
ln -sf $HOME/.dotfiles/.xmodmaprc $HOME/.xmodmaprc # file

# nvim configuration
#ln -sf $HOME/.dotfiles/.vim/ $HOME/ # directory
#export MYVIMRC=$HOME/.vim/vimrc
ln -sf $HOME/.dotfiles/nvim/ $HOME/.config/ # directory

# polybar configuration
ln -sf $HOME/.dotfiles/polybar $HOME/.config/ # directory

# fonts configuration 
ln -sf $HOME/.dotfiles/fonts/.fonts $HOME/ # directory

# gtk configuration
ln -sf $HOME/.dotfiles/gtk/.gtkrc-2.0 $HOME/.gtkrc-2.0 # file
ln -sf $HOME/.dotfiles/gtk/gtk-3.0 $HOME/.config/ # directory
ln -sf $HOME/.dotfiles/gtk/gtk-4.0 $HOME/.config/ # directory

# joplin configuration
ln -sf $HOME/.dotfiles/joplin/keymap.json $HOME/.config/joplin/keymap.json

# invert script configuration
if [ ! -f /usr/bin/invert-color ]; # if the link does not exist, create it
	then
		sudo ln -s $HOME/.dotfiles/invert.sh /usr/bin/invert-color
fi
