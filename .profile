export SHELL=/bin/zsh
export EDITOR=/usr/bin/nvim
export PYTHONPATH=$PYTHONPATH:~/bin/:
export I3CONFDIR=~/.config/i3
export WPDIR=~/Images/Wallpapers/slideshow
export GOPATH=$HOME/Projects/go
export PATH=$PATH:~/bin/:$(ruby -e 'print Gem.user_dir')/bin/:~/.cabal/bin/:~/.local/bin/:/opt/sencho/:~/Projects/go/bin/:
export BROWSER=/usr/bin/firefox
export PATH=~/.npm-global/bin:$PATH

zsh --login
