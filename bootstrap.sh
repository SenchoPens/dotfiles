#!/usr/bin/env sh

#ToDo: port to Ansible

pacman -S pacaur
alias ins='pacaur -S'

# fonts
ins nerd-fonts-complete

# terminal-related
ins zsh antigen fortune-mod thefuck translate-shell httpie http-prompt

# python
ins python2 python2-pip python3 python3-pip ptpython
pip3 install ipython schedule

# neovim
ins neovim ruby
sudo pip2 install neovim
sudo pip3 install neovim
gem install neovim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
/tmp/install.sh ~/.local/share/dein
ins flake8

# i3
ins compton i3-scrot
ins light
ins py3status

# arc gtk theme
ins arc-gtk-theme
ins arc-firefox-theme
ins arc-icon-theme
