# .dotfiles
My personal dotfiles.

## Operating System 

The configuration files in this repository are mostly focused on GNU/Linux OS, specifically Ubuntu. However, I added some minor configuration for windows, which can be found in `.windows` subfolder. Additionally, if you install Vim for windows, make sure to place the `plug.vim` from `junegunn/vim-plug` inside the `C:\Program Files (x86)\Vim\vim82\autoload` folder.

All the following information is then only for Ubuntu and other Linux distributions.

## Requirements

In the configuration files within this repository, I use the following programs and other dependecies:

+ i3
+ rofi
+ lxapperance (recommended)
+ xdotool 
+ polybar
+ nvim >= 0.5.0

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

### Sub-Installation

#### [Polybar](https://github.com/polybar/polybar)

Look into the Polybar github page to look for directions on how to install polybar. For ubuntu 20.04, I had to build from source. After that, you will need to just add the config file path.

```
polybar --config=$HOME/.dotfiles/polybar/config
```

#### Neovim

Neovim is awesome and has some excellent features that Vim does not have. Many of its plugins are have difficult installation steps. Here are some:

##### [vim-plug](https://github.com/junegunn/vim-plug)

In their github page, they have excellent documentation for how to install vim-plug in vim and neovom. Here is how to install it in neovim.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

##### [Vimspector](https://github.com/puremourning/vimspector)

Vimspector is by far the coolest plugin I have found. However, its installation is very difficult and can break in different systems. Here are some of the steps I had to take for Ubuntu 20.04.

```
git clone https://github.com/junegunn/vim-plug
cd vimspector
python install_gadget.py --enable-python
conda install debugpy
pip install neovim
```

## Color Scheme

Currently, this setup is having a monokai color scheme - at least I try for gtk themes, nvim, and terminal configurations.
