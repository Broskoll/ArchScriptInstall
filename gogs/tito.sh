#!/bin/bash

wget https://dl.gogs.io/gogs_latest_raspi2.zip
unzip gogs_latest_raspi2.zip
sudo cp /home/git/gogs/scripts/systemd/gogs.service /etc/systemd/system/
sudo systemctl enable gogs
sudo systemctl start gogs

#If config change
#https://gogs.io/docs/advanced/configuration_cheat_sheet
#custom/conf/app.ini
#sudo systemctl stop gogs
#sudo systemctl start gogs
