# Random_MAC_gen
In the firmware of the network adapter chip, every network adapter has a unique MAC address embedded by the manufacturer. Sometimes you may need to find out or change the MAC address of the network adapter especially if it is used for Internet access authentication. Some users, for security reasons, opt to hide their MAC address.  With our program, you can now easily spoof the MAC address. With a few clicks, users will be able to change their MAC addresses. During this operation, it is possible to select a different manufacturer or generate a completely random MAC address

Steps :                                                 
                                                        
1 git clone https://github.com/sajeeds4/Random_MAC_gen/

2 cd Random_MAC_gen                                     
3 ls  
note : mac.sh is for 2 interfaces and it is for tp link wifi adapter
       mac2.sh is for primary network interface

4 chmod +x mac.sh 
  chmod +x mac2.sh

to know your network interface names 
use this commands
$ ifconfig , ip addr , iwconfig

5 sudo ./mac.sh  for 2 network interfaces
6 sudo ./mac2.sh for single network interface 

TO run at start follow this steps

1 sudo nano /etc/systemd/system/mac.service for 2 network interfaces
  sudo nano /etc/systemd/system/mac2.service

2 copy paste this 

"[Unit]

Description=Random mac address changer
After=network-online.target
Wants=network-online/target

[Service]

Type=simple
ExecStart=/bin/bash /home/kali/Random_MAC_gen/mac.sh (note : please change the locaton of the file here, change mac2.sh for single network interface )

[Install]

WantedBy=multi-user.target"

3. sudo chmod 644 /etc/systemd/system/mac.service for 2 network interfaces
   sudo chmod 644 /etc/systemd/system/mac.service for single network interface
4. reboot

5. sudo service mac start
6. sudo service mac status
 
 to run at reboot

7. sudo systemctl enable mac
8. sudo systemctl status mac

to disable 

9. sudo systemctl disable mac

for any queries you can ping me instagram
https://instagram.com/s4s_m_/
