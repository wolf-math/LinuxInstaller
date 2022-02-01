#!/bin/bash

# Updated for Linux Mint 20.3 Una.
# Must install git before any of this works!!!

cd

# increase max tracking files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# apt
sudo apt update
sudo apt upgrade -y
sudo apt install zsh -y
sudo apt install tilda -y
sudo apt install plank -y
sudo apt install asunder -y
sudo apt install cheese -y
sudo apt install gedit -y
sudo apt install gparted -y
sudo apt install easytag -y
sudo apt install flameshot -y
sudo apt install idle3 -y
sudo apt install keepassx -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install pinta -y
sudo apt install python3-pip -y
sudo apt install virtualbox -y
sudo apt install vlc -y
sudo apt install whatsapp-desktop -y
sudo apt install ffmpeg -y
sudo apt install mkvtoolnix -y
sudo apt install mkvtoolnix-gui -y
sudo apt purge hexchat -y
sudo apt purge thunderbird -y
npm install -g npx

# PPAs
# Ulancher
sudo add-apt-repository ppa:agornostal/ulauncher -y

# SoundSwitcher
sudo apt-add-repository ppa:yktooo/ppa -y

# AppimageLauncher
sudo add-apt-repository ppa:appimagelauncher-team/stable -y

sudo apt update
sudo apt install indicator-sound-switcher -y
sudo apt install appimagelauncher -y
sudo apt install ulauncher -y

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

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
 sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop -y

# Slack
wget https://downloads.slack-edge.com/releases/linux/4.23.0/prod/x64/slack-desktop-4.23.0-amd64.deb
sudo apt install ./slack-desktop-4.23.0-amd64.deb
rm -f slack-desktop-4.23.0-amd64.deb

# insync
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo touch /etc/apt/sources.list.d/insync.list
sudo sh -c 'echo "deb http://apt.insync.io/mint una non-free contrib" >> /etc/apt/sources.list.d/insync.list'
sudo apt update
sudo apt install insync

# Bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
sudo dpkg -i bottom_0.6.6_amd64.deb
rm -f bottom_0.6.6_amd64.deb

# others
# libinputgestures
cd ~
sudo apt install wmctrl xdotool -y
sudo apt install libinput-tools -y
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
mv libinput-gestures.conf libinput-gestures.conf.old
mv ~/installer/libinput-gestures.conf ~/libinput-gestures/libinput
cd ~

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
