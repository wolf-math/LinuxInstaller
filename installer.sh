#!/bin/bash

# Updated for Linux Mint 20.3 Una.
# Must install git before any of this works!!!

# increase max tracking files
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# apt
sudo apt update
sudo apt install zsh -y
sudo apt install tilda -y
sudo apt install plank -y
sudo apt install appimagelauncher -y
sudo apt install asunder -y
sudo apt install cheese -y
sudo apt install gedit -y
sudo apt install gparted -y
sudo apt install easytag -y
sudo apt install flameshot -y
sudo apt install idle3 -y
sudo apt install keepassx -y
sudo apt install nodejs npm -y
npm install -g npx
sudo apt install rpi-imager -y
sudo apt install virtualbox -y
sudo apt install vlc -y
sudo apt install whatsapp-desktop -y
sudo apt install texlive-full -y
sudo apt install texmaker -y
sudo apt purge hexchat -y
sudo apt purge thunderbird -y

# PPAs

# Ulancher
sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher -y

# SoundSwitcher
sudo apt-add-repository ppa:yktooo/ppa -y
sudo apt-get update
sudo apt-get install indicator-sound-switcher -y

# wget

# chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-sable_current_amd64.deb

# TorGuard
wget https://torguard.net/downloads/new/torguard-latest-amd64.deb
sudo apt install ./torguard-latest-amd64.deb

# VSCode
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64

# Signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
 sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop -y

# Slack
wget https://downloads.slack-edge.com/releases/linux/4.23.0/prod/x64/slack-desktop-4.23.0-amd64.deb
sudo apt install ./slack-desktop-4.23.0-amd64.deb
rm slack-desktop-4.23.0-amd64.deb

# insync
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
deb http://apt.insync.io/mint una non-free contrib
sudo apt update
sudo apt install insync

# Plexamp
wget https://plexamp.plex.tv/plexamp.plex.tv/desktop/Plexamp-3.9.1.AppImage

# Bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
sudo dpkg -i bottom_0.6.6_amd64.deb

# libinputgestures
sudo apt-get install wmctrl xdotool -y
sudo apt-get install libinput-tools -y
git clone https://github.com/bulletmark/libinput-gestures.git
cd libinput-gestures
sudo make install
cd ..

# Red Alert
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Red-Alert-x86_64.AppImage
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Tiberian-Dawn-x86_64.AppImage
wget https://github.com/OpenRA/OpenRA/releases/download/release-20210321/OpenRA-Dune-2000-x86_64.AppImage

# pip3 installs
pip3 install jupyter
pip3 install pandas

# Cinnamon
mv ~/.cinnamon ~/.cinnamon-old
cp ./cinnamon ~/.cinnamon

# zsh
echo 'alias update="sudo apt update && sudo apt list --upgradable"' >> ~/.zshrc
echo 'alias upgrade="sudo apt upgrade"' >> ~/.zshrc
echo 'alias gestures="libinput-gestures-setup restart"' >> ~/.zshrc
echo 'alias server="ssh 192.168.50.2"' >> ~/.zshrc

# Oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
