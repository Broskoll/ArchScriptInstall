#!/bin/bash
#wget -O siso.sh goo.gl/bI4WaB && bash siso.sh

sudo wifi-menu
sudo netctl enable wlp2s0-MagicWifi
sudo netctl start wlp2s0-MagicWifi

echo -e "\n Update/Upgrade"
sudo pacman -Syu

echo -e "\n Install packages"
echo -e "Pacman"
sudo pacman -S `#comment` \
xf86-video-intel mesa \
xorg-server xorg-server-utils xorg-xinit \
linux-zen linux-zen-headers `#Kernel` \
termite \
neovim \
firefox \
alsa-utils \
udiskie \
python python2 python-pip python2-pip \
android-tools \
mpv \
ranger \
feh \
zip unzip \
redshift \
htop \
slim \
scrot \
openssh \
rsync \
ntfs-3g \
unclutter \
xsel `#Copy` \
ruby \
npm \
zsh \
zsh-completions

echo -e "Yaourt"
yaourt -S \
i3-gaps-git \
broadcom-wl-dkms \
concalc \
lemonbar-git \
dmenu2 \
hsetroot \
searx \
zeronet \
#hget-git `#Better wget` \
kpcli `#Keepass` \
#Doesn't work: subliminal-git `#Subtitles`\
rtv \
ruby-bropages \
oh-my-zsh-git

echo -e "Npm"
sudo npm install -g magnet-cli \
rdcli

echo -e "\n Enabling Ssh"
sudo systemctl enable sshd.service
sudo systemctl start sshd.service

echo -e "\n Enabling Zeronet
sudo systemctl enable zeronet
