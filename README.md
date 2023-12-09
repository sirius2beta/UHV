# Introduction
This is a program running on an onboard computer of unmanned surface vehicle(USV). It combines a dual-channel network system to achieve redundant communication, enhancing the reliability of data transmission. Simultaneously, through the GPlayer software on the Ground Control Station (GCS), real-time images from the boat can be obtained, with support for up to 10 video channels and the ability to stream 3 videos simultaneously. Additionally, we have integrated the functionality of MAVLink router, allowing the transmission of MAVLink messages from the flight controller to the GCS.

# Installation
* After starting up the raspberry pi, install this repository
  ```
  git clone https://github.com/sirius2beta/USVPI.git
  ```
* Than, run the installation command
  ```
  cd USVPI
  bash install.sh
  ```
* Reboot
