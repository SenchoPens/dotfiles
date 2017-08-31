typeset -U path
path=(~/bin $path $(ruby -e 'print Gem.user_dir')/bin)

export SHELL=/bin/zsh
export EDITOR=/usr/bin/nvim
export PYTHONPATH=$PYTHONPATH:~/Projects/:~/bin/:
export I3CONFDIR=~/.config/i3
export WPDIR=~/Images/Wallpapers/slideshow

