#!/bin/bash

echo "remap the device serial port(ttyUSBX) to  create_2"
echo "create_2 usb connection as /dev/create_2 , check it using the command : ls -l /dev|grep ttyUSB"
echo "start copy create2.rules to  /etc/udev/rules.d/"
echo "`rospack find create_autonomy`/scripts/create2.rules"
sudo cp `rospack find create_autonomy`/scripts/create2.rules  /etc/udev/rules.d
echo " "
echo "Restarting udev"
echo ""
sudo service udev reload
sudo service udev restart
echo "finish "
