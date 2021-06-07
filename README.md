# .dotfiles
My personal dotfiles.

## Requirements

In the configuration files within this repository, I use the following programs and other dependecies:

+ i3
+ rofi
+ arc-theme
+ lxapperance (recommended)

## Installation 

I relocated all of the .dotfiles that I have personally modified inside this folder. The `sym_links.sh` script file generates the symbolic links between the expected location of the config file and actual file in this repository. I added the following to my `.bashrc` to automatically create these symbolic links.

```
. ~/.dotfiles/sym_links.sh
```

That is assuming that you have placed the `.dotfiles` directory in your home folder. Please note that you might have to configure your symbolic links differently based on your installation of i3.

