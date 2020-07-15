# My arch dotfiles
Here is my configuration for neovim, zsh (oh-my-zsh), X Keyboard Extension, termite terminal and i3wm.
## Structure
* My scripts are in `~/bin/`.
* I have split conifugration for zsh, i3 and neovim: all aliases and functions for zsh are in `~/.zshrc.d/` directory. i3 config is compiled into one file with a handwritten script in `~/bin/`.
* I have a directory `~/sessions/` - it stores different `sh` files, which are basically a recording of shell commands I ran to install or configure specific software. It solves the problem of running all the same commands from tutorials to install one piece of software to 2 different computers.
## Terminals
I have two working solarized configs: for [termite](https://github.com/thestinger/termite) and [kitty](https://github.com/kovidgoyal/kitty/releases). I prefer kitty now because of the better startup time and a fancy word 'GPU' in it's description.
## How do I manage them?
I use and highly recommend [yadm](https://thelocehiliosan.github.io/yadm/) - it is `git` optimized for `~`, to use it just substitute `git` to `yadm` in whatever command you want to run.
