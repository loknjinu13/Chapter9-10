#!/bin/bash -x
#Chapter 10 scripts
echo "Networking services"
sleep 1
echo "let install ntp"
sudo apt install ntp
echo "lets check the ntp peers around us"
ntpq -p
echo "Lets check programs using or listening to ports on your pc"
lsof -i
sleep 1
echo "lets see what is crossing our network now"
sudo tcpdump udp
#end of script
