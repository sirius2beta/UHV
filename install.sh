#!/bin/bash
#Program:
# This program will auto install mavproxy, openvpn, gstreamer
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH


cd
git clone https://github.com/sirius2beta/USVPI.git
git clone https://github.com/sirius2beta/sensor.git
git clone https://github.com/sirius2beta/GStreamer_singlecamera.git
git clone https://github.com/sirius2beta/GPlayer3.git
cd GPlayer3
bash install.sh

cd ~/USVPI
sudo cp rc.local /etc
sudo raspi-config nonint do_vnc 0
sudo raspi-config nonint do_vnc_resolution 1920x1080
sudo raspi-config nonint do_camera 0
