#!/bin/bash
#Start by updating repos, and upgrading packages 
sudo apt update && sudo apt upgrade

#Install nala (I just prefer its front end)
sudo apt install nala

#Use nala to install some packeges
#You can change these packeges, just seperate with a space
sudo nala install neovim terminator git neofetch wl-client exa curl gtk2-engines-murrine btop htop net-tools mpv

#Make and move to delta/
mkdir ~/delta
cd delta

#Clone my dotfiles
git clone https://github.com/QSPR/dotfiles.git ~/delta

#Move to repo clone
cd ~/delta

#Move dotfiles where they go
mv -f .bashrc ~/
mv -f .bash_aliases ~/
mv -f config.conf ~/.config/neofetch/
mv -f config ~/.config/terminator/
mv -f xfce4 ~/.config/
mv -f firefox_firefox.desktop ~/.local/share/xfce4/helpers
mv -f Thunar ~.config/

#Grab Icons

#Install Icons

#Grab Font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/JetBrainsMono.zip

#Install Font
mkdir ~/.fonts
unzip JetBrainsMono.zip -d ~/.fonts

#Grab Themes

#Install Themes




#Some other commands I like
####Store git login credentials
#git config --global cridential.helper store
