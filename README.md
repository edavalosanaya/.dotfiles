# .dotfiles
My personal dotfiles.

## Operating System 

The configuration files in this repository are mostly focused on GNU/Linux OS, specifically Ubuntu. However, I added some minor configuration for windows, which can be found in `.windows` subfolder. Additionally, if you install Vim for windows, make sure to place the `plug.vim` from `junegunn/vim-plug` inside the `C:\Program Files (x86)\Vim\vim82\autoload` folder.

All the following information is then only for Ubuntu and other Linux distributions.

## Requirements

In the configuration files within this repository, I use the following programs and other dependecies:

+ i3
+ rofi
+ arc-theme
+ lxapperance (recommended)
+ compton
+ xdotool 

### Additional Program Requirements

This a list of applications that I commonly use in my workspace and have added to the initialization of i3.

+ superproductivity
+ habitica-desktop

## Installation 

First, you need to provide executing privilege to the shell scripts present in the repository. You can do that with the following two commands.

```
chmod +x ~/.dotfiles/sym_links.sh
chmod +x ~/.dotfiles/invert.sh
```

I relocated all of the .dotfiles that I have personally modified inside this folder. The `sym_links.sh` script file generates the symbolic links between the expected location of the config file and actual file in this repository. I added the following to my `.bashrc` to automatically create these symbolic links.

```
. ~/.dotfiles/sym_links.sh
```

That is assuming that you have placed the `.dotfiles` directory in your home folder. Please note that you might have to configure your symbolic links differently based on your installation of i3.

