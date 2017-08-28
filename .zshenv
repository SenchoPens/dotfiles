typeset -U path
path=(~/bin $path $(ruby -e 'print Gem.user_dir')/bin)

I3CONFDIR=~/.config/i3
