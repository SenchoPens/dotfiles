# Sudo aliases
alias zypper='sudo zypper'
alias mount='sudo mount'
alias umount='sudo umount'
alias fdisk='sudo fdisk'
alias pip3='sudo pip3'

# Hashes
hash -d pproj=~/Projects
hash -d i3conf=$I3CONFDIR
hash -d viconf=~/.config/nvim/
hash -d amusic=/media/mtp/sdcard1/Music

# Aliases for translation
alias ten='trans :en'
alias tru='trans :ru'

# Aliases for my progs
alias pcomf='pcom -f'
alias tobinf='tobin -n'

# Just aliases
alias qtcreator='sh /home/sencho/Qt/Tools/QtCreator/bin/qtcreator.sh &'
alias jpy='nonohup jupyter notebook'
alias jco='coconut --target 36 --jupyter notebook'
alias todo='task add'
alias pipin='pip3 install --user'
alias rainbow='yes "$(seq 231 -1 16)" | while read i; do printf "\x1b[48;5;${i}m\n"; sleep .02; done'
alias urbdict='zdict --dict urban'

alias enpl='launch_mplayer eng,rus,jap'
alias rupl='launch_mplayer rus,eng,jap'

alias -g L="| less"
alias -g ED="export DISPLAY=:0.0"

# For weather
alias wmos='weather Moscow'

# Useful command aliases that I always forget
alias save_targz='tar -czvf'
alias unpack_targz='tar -xzf'

# Aliases for automated file opening
alias -s txt=nvim
alias -s {avi,mkv,mp4}=enpl
alias -s html='firefox'
alias -s {jpg,jpeg,png,pdf}='nonohup okular'
alias -s docx='nonohup libreoffice'

