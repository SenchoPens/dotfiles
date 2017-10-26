# Sudo aliases
alias zypper='sudo zypper'
alias mount='sudo mount'
alias umount='sudo umount'
alias fdisk='sudo fdisk'
alias spip3='sudo pip3'
alias spip='sudo pip'
alias spip2='sudo pip2'

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
alias teni='trans :en -I'
alias trui='trans :ru -I'
alias urbdict='zdict --dict urban'

# My progs
alias pcomf='pcom -f'
alias tobinf='tobin -n'

# Python development
alias jpy='nonohup jupyter notebook'
# coconut - function programming python-like language
alias jco='coconut --target 36 --jupyter notebook'
alias pipin='pip install --user'
alias pipin2='pip2 install --user'
alias pipin3='pip3 install --user'
alias ptpy='ptipython'  # cool console (i)python REPL
alias ptal='ptpy -i ~/.ptpython/algebra.py'
alias jnq='jupyter notebook --browser="qutebrowser"'

# pacaur - a wrapper around AUR
alias pin='pacaur -S --noedit'
# search is in fu.zsh
alias pup='pacaur -Syu'  # Update system
# Remove package and it's dependencies which are not required by any other installed package
alias pre='pacaur -Rs'

# Various
alias todo='task add'
alias rg='ranger'

# ls
alias ls='ls --color -h --group-directories-first'
alias lc='colorls -r -sd'  # ls with icons

# simultanious cd
alias ds='pwd > /tmp/cwd'
alias dr='cd "$(</tmp/cwd)"'

# yadm (git for dotfiles)
alias ycam='yadm commit -am'
alias ya='yadm add'
alias yapu='yadm push'
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

