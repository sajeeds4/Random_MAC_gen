macchanger -l > vendor.txt
var_1=$(shuf -n 1 vendor.txt | awk '{print $3}')
var_2=$(printf '%02X:%02x:%02X' $[RANDOM%256] $[RANDOM%256] $[RANDOm%256])
echo Please enter your network interface one :
read networkinterfaceone
sudo macchanger -m "$var_1:$var_2" $networkinterfaceone
