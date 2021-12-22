#!/bin/bash
#Program:
# This program will auto install mavproxy
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
echo "start downloading mavproxy"
yes Y |sudo apt-get update
yes Y |sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
pip3 install PyYAML mavproxy --user
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
source ~/.bashrc
yes Y |sudo apt-get install openvpn
cd /etc/openvpn/
read ip
read ovpn_path
sudo scp sirius2beta@${ip}:${ovpn_path} .
sudo mv [name].ovpn client.conf

