#!/bin/bash
#wget -O fifo.sh goo.gl/RO8Aj2 && bash fifo.sh

sudo apt-get update
#sudo apt-get upgrade -y
echo -e "Root passwd : "
sudo passwd
sudo adduser --disabled-login --gecos 'Gogs' git
echo -e "Pi passwd : "
passwd pi
echo -e "Git passwd : "
sudo passwd git
wget https://raw.githubusercontent.com/Broskoll/Setup/master/gogs/fifo2.sh
wget https://raw.githubusercontent.com/Broskoll/Setup/master/gogs/siso.sh
su root ~/fifo2.sh
