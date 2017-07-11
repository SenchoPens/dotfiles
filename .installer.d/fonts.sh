# Install Nerd Fonts
cd tmp/
git clone https://github.com/ryanoasis/nerd-fonts.git
sh /tmp/nerd-fonts/install.sh

# Make system-wide
sudo ln -s $(readlink -f ~/.local/share/fonts/NerdFonts) /usr/share/fonts/

