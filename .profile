export SHELL=/bin/zsh
export EDITOR=/usr/bin/nvim
export PYTHONPATH=$PYTHONPATH:~/Projects/:~/bin/:
export I3CONFDIR=~/.config/i3
export WPDIR=~/Images/Wallpapers/slideshow
export PATH=$PATH:~/bin/:$(ruby -e 'print Gem.user_dir')/bin:~/.cabal/bin

zsh --login
