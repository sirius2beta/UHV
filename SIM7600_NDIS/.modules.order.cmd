cmd_/home/pi/USVPI/SIM7600_NDIS/modules.order := {   echo /home/pi/USVPI/SIM7600_NDIS/simcom_wwan.ko; :; } | awk '!x[$$0]++' - > /home/pi/USVPI/SIM7600_NDIS/modules.order
