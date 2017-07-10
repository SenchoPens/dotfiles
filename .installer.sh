ins_command=$1
ins() {
  $ins_command $@
  echo ''
}
echo "Installing with '$ins_command'"

ins_log() {
  echo "Installing $1 dependencies..."
}

# prog
ins_log 'language'
ins python
ins python3
ins haskell
ins cabal

# Shell
ins_log 'shell'

# all my dotfiles
# yadm - dotfiles manager
sudo curl -fLo /usr/local/bin/yadm https://github.com/TheLocehiliosan/yadm/raw/master/yadm && sudo chmod a+x /usr/local/bin/yadm
yadm clone https://github.com/SenchoPens/dotfiles.git

ins zsh
ins urxvt
# antigen (plugin manager for zsh) 
sudo curl -L git.io/antigen > /usr/share/antigen.zsh
# for chucknorris plugin
ins fortune
# translating (adds trans command)
ins translate-shell
# Todoer
ins taskwarrior
#TODO add jmtpfs installation

## Neovim
ins_log 'neovim'
ins neovim

## WM
ins_log 'i3'
ins i3
ins rofi  # my dmenu
ins feh  # wallpapers

