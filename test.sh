#!/bin/bash
#Program:
# This program will auto install mavproxy
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
read ip
read ovpn_path
read ovpn_file
read password
yes ${password} |sudo scp sirius2beta@${ip}:${ovpn_path}/${ovpn_file} .
sudo mv ${ovpn_file}.ovpn client.conf
