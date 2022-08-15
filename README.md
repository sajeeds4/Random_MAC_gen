# Random_MAC_gen
In the firmware of the network adapter chip, every network adapter has a unique MAC address embedded by the manufacturer. Sometimes you may need to find out or change the MAC address of the network adapter especially if it is used for Internet access authentication. Some users, for security reasons, opt to hide their MAC address.  With our program, you can now easily spoof the MAC address. With a few clicks, users will be able to change their MAC addresses. During this operation, it is possible to select a different manufacturer or generate a completely random MAC address

Steps :                                                 
                                                        
1 git clone https://github.com/sajeeds4/Random_MAC_gen/

2 cd Random_MAC_gen                                     
3 ls                                                    
4 chmod +x mac.sh                                       
5 sudo ./mac.sh                                         

TO run at start follow this steps

1 sudo nano /etc/systemd/system/mac.service
2 copy paste this 

"[Unit]

Description=Random mac address changer
After=network-online.target
Wants=network-online/target

[Service]

Type=simple
ExecStart=/bin/bash /home/kali/Random_MAC_gen/mac.sh (note : please change the locaton of the file here)

[Install]

WantedBy=multi-user.target"

3. sudo chmod 644 /etc/systemd/system/mac.service
4. reboot

After reboot make sure everything is working fine
