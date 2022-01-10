#!/bin/expect
#Program:
# This program will auto install mavproxy
# History:
# 2021/12/22  Sirius  First release
spawn minicom -D /dev/ttyUSB2
expect "Press CTRL-A Z for help"
send "AT\$QCRMCALL=1,1\r"
