#!/bin/bash
macchanger -l > vendor.txt
var_1=$(shuf -n 1 vendor.txt | awk '{print $3}')
var_2=$(printf '%02X:%02x:%02X' $[RANDOM%256] $[RANDOM%256] $[RANDOm%256])
sudo macchanger -m "$var_1:$var_2" eth0

#2
sudo modprobe 8188eu
service NetworkManager stop
ifconfig wlan0 down
macchanger -m "$var_1:$var_2" wlan0
ifconfig wlan0 up
service NetworkManager start
