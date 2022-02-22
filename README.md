# Introduction
I'm working on a project to make Unmanned Surface Vehicle(USV). This folder is installed on a raspberry pi. Including installation of mavproxy, openvpn, gstreamer, 4G module drivers... 
# Getting started
After starting up the raspberry pi, install this repository
```
git clone https://github.com/sirius2beta/USVPI.git
```
than, run the installation command
```
bash USVPI/install.sh
```
Make 4G_Connect.sh execuatable
```
sudo chmod +x 4G_Connect.sh
```
edit the /etc/rc.local file
```
sudo nano /etc/rc.local
```
Add the following command before "Exit 0"
```
/home/pi/4G_Connect.sh &
```
