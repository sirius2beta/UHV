#!/bin/bash
#Program:
# This program will auto install mavproxy, openvpn, gstreamer
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
echo "start downloading mavproxy..."
yes Y |sudo apt-get update
yes Y |sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
pip3 install PyYAML mavproxy --user
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
source ~/.bashrc
echo "start downloading openvpn..."
yes Y |sudo apt-get install openvpn
echo "start installing gstreamer"
yes Y |sudo apt-get install libx264-dev libjpeg-dev
yes Y |sudo apt-get install libgstreamer1.0-dev \
		     libgstreamer-plugins-base1.0-dev \
		     libgstreamer-plugins-bad1.0-dev \
		     gstreamer1.0-plugins-ugly \
     gstreamer1.0-tools
yes Y |sudo apt-get install gstreamer1.0-gl gstreamer1.0-gtk3
echo "start installing minicom"
yes Y |sudo apt-get install minicom
echo "start setting up 4G module"
wget https://www.waveshare.net/w/upload/0/00/SIM7600_NDIS.7zsudo
yes Y |sudo apt-get install p7zip-full
7z x SIM7600_NDIS.7z   -r -o./SIM7600_NDIS
cd SIM7600_NDIS
yes Y |sudo apt install raspberrypi-kernel-headers
sudo -s make clean 
sudo -s make
yes Y |apt-get install udhcpc
echo "finished installation process"

