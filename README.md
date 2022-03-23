# Introduction
I'm working on a project to make Unmanned Surface Vehicle(USV). This folder is installed on a raspberry pi. Including installation of mavproxy, openvpn, gstreamer, 4G module drivers... 
# Getting started
After starting up the raspberry pi, install this repository
```
git clone https://github.com/sirius2beta/USVPI.git
```
than, run the installation command
```
cd USVPI
bash install.sh
```
Edit the /etc/rc.local file
```
sudo nano /etc/rc.local
```
Add the following command before "Exit 0"
```
/home/pi/USVPI/4G_Connect.sh&
```
Join zerotier network
```
sudo zerotier-cli join [NETWORKID]
```
If your Raspberry Pi successfully joins the ZeroTier network, you should see the following message.
```
200 join OK
```
Once you are on the management page for your Raspberry Pi’s ZeroTier network, you will need to scroll down to see the “Members” section.

This command will list all networks that your ZeroTier installation is connected to and the status of that connection.
```
sudo zerotier-cli listnetworks
```
Below is an example of what you should see when your Raspberry Pi has successfully connected to your ZeroTier network. The last value is the IP address that was assigned to your Pi as a member of the virtual network.
```
200 listnetworks [Network ID] [Network NAME] [Network Address] OK PRIVATE [Virtual Name] [Virtual IP]
```
