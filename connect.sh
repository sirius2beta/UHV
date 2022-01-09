#!/bin/expect
#Program:
# This program will auto install mavproxy
# History:
# 2021/12/22  Sirius  First release
spawn minicom -D /dev/ttyUSB2
send "AT+CPIN=0000"
send "AT\$QCRMCALL=1,1"
