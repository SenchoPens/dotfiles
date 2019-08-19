reload() {
  curdir=$(pwd)
  source ~/.zshrc
  cd $curdir
  echo 'zshrc successfully reloaded!'
}

seek() {
  sudo find / -name $@ -not -path '/.snapshots/*'
}

pse() {
  pse-command $@ | less
}

mkcd() {
  mkdir -p "$@" && eval cd "\"\$$#\""
}

nonohup() {
  nohup $@ >/dev/null 2>&1 &
}

hs() {
  hoogle search --count=10000 $1 | less
}

start_pma() {
  # Start PhpMyAdmin - start nessesary services and open phpMyAdmin in firefox.
  systemctl start mysql
  systemctl start apache2
  firefox 'http://localhost/phpMyAdmin/'
}

gen_bitbucket_key() {
  ssh-keygen
  eval `ssh-agent -s`
  ssh-add ~/.ssh/id_rsa
  echo "\nHere u r:"
  cat ~/.ssh/id_rsa.pub
}

find_string() {
  grep -rnw . -e $1
}

pip3_update_all() {
  sudo pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 sudo pip3 install -U
}

tomobi() {
  ebook-convert $1 .mobi
}

andro() {
  jmtpfs /media/mtp/
}

uandro() {
  cd ~
  umount /media/mtp/
}

kindle() {
  mount /dev/sdb1 /mnt
}

ukindle() {
  cd ~
  umount /mnt
}

weather() {
  curl "http://wttr.in/$1"
}

factorio() {
  cd ~/Games/factorio/bin/x64/
  ./factorio
}

zypper_ans() {
  echo 'y'  # proceed to update
  echo 'yes'  # agree on nouveau driver license
  while true; do
    echo 'y'
  done;
}

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}

launch_gmplayer() {
  gmplayer -alang $1 -slang eng,rus -ass-border-color 000000FF -ass-color FFD630FF -ass-force-style FontName=Serif -subpos 93 $2
}

setup_ihc_ubuntu() {
  # args: $1 - project name;
  su -
  apt install git
  echo 'Primary dependencies installed.'

  adduser $1
  su $1
  curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash
  echo 'export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
  echo "Pyenv installed for $1"

  su -
  apt install gcc
  apt install make
  apt install zlibc
  echo 'Python build dependencies installed'

  su $1
  gen_bitbucket_key
}

download_ftp() {
  wget -m --user=$1 --password=$2 $3
}

yadm_add_all() {
  name=$1
  imp_dirs=(~/bin ~/.zshrc.d ~/.config/nvim ~/.config/i3 ~/.config/vimfx ~/.config/xkb ~/.config/termite)
  for imp_dir in $imp_dirs
  do
    yadm add $imp_dir
  done
}

dd_to_sdb() {
  sudo dd if=$1 of=/dev/sdb
}

winformat() {
  sudo mkfs -t vfat $1
}

mksession() {
  session_name="$HOME/sessions/$1.sh"
  touch $session_name
  tail --lines=500 ~/.zsh_history | cut --delimiter=';' --fields=2 > $session_name
  $EDITOR $session_name
}

cheatsheet() {
  curl "http://cheat.sh/$1"
}

getOS() {
  . /etc/os-release
  echo $NAME
}

test-py() {
  cat "$2.in" | python3 $1
}

test-cpp() {
  g++ "$1.cpp" && cat "$2.in" | a.out
}

export-from-file() {
  source $1
  export $(cut -d= -f1 $1)
}

diff-strings() {
  diff  <(echo $1 ) <(echo $2)
}
