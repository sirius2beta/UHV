#!/bin/bash
#Program:
# This program will auto install mavproxy, openvpn, gstreamer
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
echo "basic settings"
sudo timedatectl set-timezone Asia/Taipei

echo "start downloading mavproxy..."
yes Y |sudo apt-get update
yes Y |sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
pip3 install PyYAML mavproxy --user
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
source ~/.bashrc

echo "start installing minicom"
yes Y |sudo apt-get install minicom

echo "start setting up 4G module"
#wget https://www.waveshare.net/w/upload/0/00/SIM7600_NDIS.7z
yes Y |sudo apt-get install p7zip-full
#7z x SIM7600_NDIS.7z   -r -o./SIM7600_NDIS
cd SIM7600_NDIS
yes Y |sudo apt install raspberrypi-kernel-headers
yes Y |sudo apt-get install --reinstall raspberrypi-bootloader raspberrypi-kernel
sudo -s make clean 
sudo -s make
yes Y |sudo apt-get install udhcpc
cd ..
sudo chmod +x 4G_Connect.sh

echo "Install Tailscale"
yes Y | sudo apt update
yes Y | sudo apt upgrade
yes Y | sudo apt install lsb-release curl
curl -L https://pkgs.tailscale.com/stable/raspbian/$(lsb_release -cs).noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/tailscale-archive-keyring.gpg] https://pkgs.tailscale.com/stable/raspbian $(lsb_release -cs) main" | sudo tee  /etc/apt/sources.list.d/tailscale.list
yes Y | sudo apt update
yes Y | sudo apt install tailscale
# Expired in Mar 4, 2024
sudo tailscale up --authkey tskey-auth-kp9gYY3CNTRL-SsRgKrmfgNRr6ibkC7QoFRhNyHf1dNsE

yes Y | sudo apt-get update
yes Y | sudo apt-get install realvnc-vnc-server

echo "start dowloading GPlayer3"
cd
git clone https://github.com/sirius2beta/USVPI.git
git clone https://github.com/sirius2beta/sensor.git
git clone https://github.com/sirius2beta/GPlayer3.git
cd GPlayer3
sudo chmod +x install.sh
bash install.sh

cd ~/USVPI
sudo cp rc.local /etc
sudo raspi-config nonint do_vnc 0
sudo raspi-config nonint do_camera 0
