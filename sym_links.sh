#!/bin/bash 

# i3 configuration
ln -sf $HOME/.dotfiles/i3 $HOME/.config/ # directory

# Keybinding configuration
ln -sf $HOME/.dotfiles/.xmodmaprc $HOME/.xmodmaprc # file

# vim configuration
ln -sf $HOME/.dotfiles/.vim/ $HOME/ # directory

# fonts configuration 
ln -sf $HOME/.dotfiles/.fonts $HOME/ # directory

# gtk-2 configuration
ln -sf $HOME/.dotfiles/.gtkrc-2.0 $HOME/.gtkrc-2.0 # file

# gtk-3 configuration
ln -sf $HOME/.dotfiles/settings.ini $HOME/.config/gtk-3.0/settings.ini # file

# invert script configuration
if [ ! -f /usr/bin/invert-color ]; # if the link does not exist, create it
	then
		sudo ln -s $HOME/.dotfiles/invert.sh /usr/bin/invert-color
fi
