#!/bin/bash

# Updated for Linux Mint 20.3 Una.
# Must install git before any of this works!!!

cd

# increase max tracking files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# apt
echo "deb http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list; wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg
sudo apt update && sudo apt install nala
sudo nala update
sudo nala upgrade -y
sudo nala install zsh -y
sudo nala install tilda -y
sudo nala install plank -y
sudo nala install asunder -y
sudo nala install cheese -y
sudo nala install gedit -y
sudo nala install gparted -y
sudo nala install easytag -y
sudo nala install flac -y
sudo nala install flameshot -y
sudo nala install idle3 -y
sudo nala install keepassxc -y
sudo nala install nodejs -y
sudo nala install npm -y
sudo nala install pinta -y
sudo nala install python3-pip -y
sudo nala install virtualbox -y
sudo nala install vlc -y
sudo nala install ffmpeg -y
sudo nala install mkvtoolnix -y
sudo nala install mkvtoolnix-gui -y
sudo apt purge hexchat -y
sudo apt purge thunderbird -y
npm install -g npx

# PPAs
# SoundSwitcher
# sudo apt-add-repository ppa:yktooo/ppa -y

# AppimageLauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable -y


# wget
# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
rm -f ./google-chrome-stable_current_amd64.deb

# TorGuard
wget https://torguard.net/downloads/new/torguard-latest-amd64.deb
sudo apt install ./torguard-latest-amd64.deb -y
rm -f ./torguard-latest-amd64.deb

# rpi-imager
wget https://downloads.raspberrypi.org/imager/imager_latest_amd64.deb
sudo apt install ./imager_latest_amd64.deb -y
rm -f imager_latest_amd64.deb

# VSCode
# wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

sudo nala update
sudo nala install indicator-sound-switcher -y
sudo nala install appimagelauncher -y
sudo nala install insync -y
sudo nala install signal-desktop -y

# Bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
sudo dpkg -i bottom_0.6.6_amd64.deb
rm -f bottom_0.6.6_amd64.deb

# AppImages
mkdir ~/appimages

# Plexamp
wget https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-3.9.1.AppImage -P ~/appimages/

# Red Alert
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Red-Alert-x86_64.AppImage -P ~/appimages/
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Tiberian-Dawn-x86_64.AppImage -P ~/appimages/
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Dune-2000-x86_64.AppImage -P ~/appimages/

# pip3 installs
pip3 install jupyter
pip3 install pandas

# zsh - not sure how to move these without the omz installer overwriting
# echo 'alias update="sudo apt update && sudo apt list --upgradable"' >> ~/.zshrc
# echo 'alias upgrade="sudo apt upgrade"' >> ~/.zshrc
# echo 'alias gestures="libinput-gestures-setup restart"' >> ~/.zshrc
# echo 'alias server="ssh 192.168.50.2"' >> ~/.zshrc

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source ~/.zshrc
