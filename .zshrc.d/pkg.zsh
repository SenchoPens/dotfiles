# Commands to boost package-related experience

if [[ $(getOS) == "Ubuntu" ]]
then
  alias pin='sudo apt-get install'
  pse-command() { 
    apt-cache search $@
  }
  alias pup='sudo -- sh -c "apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y"'
  alias pre='sudo apt-get purge --auto-remove'
elif [[ ($(getOS) == "Manjaro Linux") || ($(getOS) == "Arch Linux") || ($(getOS) == "Antergos Linux") ]]
then
  # yay - a wrapper around AUR
  alias pin='yay -S'
  pse-command() { 
    yay -Ss $@ 
  }
  # Update system
  alias pup='yay -Syu'
  # Remove package and it's dependencies which are not required by any other installed package
  alias pre='yay -Rs'
fi

