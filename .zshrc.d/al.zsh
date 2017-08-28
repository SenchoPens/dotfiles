# Sudo aliases
alias zypper='sudo zypper'
alias mount='sudo mount'
alias umount='sudo umount'
alias fdisk='sudo fdisk'
alias pip3='sudo pip3'
alias pip='sudo pip'
alias pip2='sudo pip2'

# Hashes
hash -d pproj=~/Projects
hash -d i3conf=$I3CONFDIR
hash -d viconf=~/.config/nvim
hash -d amusic=/media/mtp/sdcard1/Music
hash -d zrc=~/.zshrc.d
hash -d ins=~/.installer.sh

# Words translation and definition
alias ten='trans :en'
alias tru='trans :ru'
alias urbdict='zdict --dict urban'

# My progs
alias pcomf='pcom -f'
alias tobinf='tobin -n'

# Python development
alias jpy='nonohup jupyter notebook'
# coconut - function programming python-like language
alias jco='coconut --target 36 --jupyter notebook'
alias pipin='pip3 install --user'
alias ptpy='ptipython'  # cool console (i)python REPL

# pacaur - a wrapper around AUR
alias pin='pacaur -S --noedit'

# Various
alias todo='task add'
alias rg='ranger'

# ls
alias ls='ls --color -h --group-directories-first'
alias lc='colorls -r -sd'  # ls with icons

# yadm (git for dotfiles)
alias yacam='yadm commit -am'
alias yadd='yadm add'

# Multimedia
alias enpl='launch_mplayer eng,rus,jap'
alias rupl='launch_mplayer rus,eng,jap'

# Global
alias -g L="| less"
alias -g ED="export DISPLAY=:0.0"

# For weather
alias wmos='weather Moscow'

# Archives
alias save_targz='tar -czvf'
alias unpack_tar='tar xf'

# Aliases for automated file opening (better be in rifle?)
alias -s txt=nvim
alias -s {avi,mkv,mp4}=enpl
alias -s html='firefox'
alias -s {jpg,jpeg,png,pdf}='nonohup okular'
alias -s docx='nonohup libreoffice'

