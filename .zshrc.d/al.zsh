# Sudo aliases
alias zypper='sudo zypper'
alias mount='sudo mount'
alias umount='sudo umount'
alias fdisk='sudo fdisk'
alias spip3='sudo pip3'
alias spip='sudo pip'
alias spip2='sudo pip2'
alias wf='sudo wifi-menu'

# Hashes
hash -d proj=~/Projects
hash -d i3conf=$I3CONFDIR
hash -d viconf=~/.config/nvim
hash -d amusic=/media/mtp/sdcard1/Music
hash -d zrc=~/.zshrc.d
hash -d ins=~/.installer.sh
hash -d sch=~/Papers/school

hash -d go=~/Projects/go
hash -d gos=~/Projects/go/src
hash -d gob=~/Projects/go/bin

# Words translation and definition
alias ten='trans :en'
alias tru='trans :ru'
alias teni='trans :en -I'
alias trui='trans :ru -I'
alias urbdict='zdict --dict urban'

# Python development
alias jpy='nonohup jupyter notebook'
# coconut - function programming python-like language
alias jco='coconut --target 36 --jupyter notebook'
alias pipin='pip install --user'
alias pipin2='pip2 install --user'
alias pipin3='pip3 install --user'
alias ptpy='ptipython'  # cool console (i)python REPL
alias ptal='ptpy -i ~/.config/ptpython/algebra.py'
alias jnq='jupyter notebook --browser="qutebrowser"'

# Various
alias todo='task add'
alias rg='ranger'

# exa
alias exa='exa --group-directories-first'

# ls
alias ls='ls --color -h --group-directories-first'
alias lc='colorls -r -sd'  # ls with icons

# simultaneous cd
alias ds='pwd > /tmp/cwd'
alias dr='cd "$(</tmp/cwd)"'

# yadm (git for dotfiles)
alias ycam='yadm commit -am'
alias ycmsg='yadm commit -m'
alias ya='yadm add'
alias yp='yadm push'
alias yapul='yadm pull'
alias yst='yadm status'

# Multimedia
alias enpl='launch_gmplayer eng,rus,jap'
alias rupl='launch_gmplayer rus,eng,jap'

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
alias -s {avi,mkv,mp4}=smplayer
alias -s html='firefox'
alias -s {jpg,jpeg,png,pdf}='nonohup okular'
alias -s docx='nonohup libreoffice'

# cpp
alias comp-ds='g++ -fsanitize=address,undefined -lpthread -x c++ -std=c++14 -O2 -Wall -Werror'

# Kindle
# Convert manga files to kindle (high-quality)
alias comic2kindle='sudo kcc-c2e --manga-style --splitter=1 --hq --profile=K578 --format=MOBI --upscale'
