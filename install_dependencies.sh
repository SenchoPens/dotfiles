#!/usr/bin/env sh

pacman -S pacaur
alias ins='pacaur -S'

# fonts
ins nerd-fonts-complete

# terminal-related
ins zsh antigen fortune-mod thefuck

# python
ins python2 python2-pip python3 python3-pip

# neovim
ins neovim ruby
sudo pip2 install neovim
sudo pip3 install neovim
gem install neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
/tmp/install.sh ~/.local/share/dein

# i3
ins compton
ins light
ins py3status
