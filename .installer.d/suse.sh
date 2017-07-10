alias zypper='sudo zypper'

## Media
# Add packman repo
zypper ar -f -n packman http://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
zypper refresh
zypper dup --from packman  # migrate necessary packages to packman

zypper install gmplayer

