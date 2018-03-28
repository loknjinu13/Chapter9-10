#!/bin/bash -x
#Chapter 9 scripts
echo "Networking basics commands"
sleep 1
echo "Which is an Application layer protocol, http or tcp:"
read -r APP_LAYER
while [[ "$APP_LAYER" != "http" &&  "$APP_LAYER" != "tcp" ]]; do
	echo "That is not one of the choices, please choose http or tcp"
	read -r APP_LAYER
done
if [[ "$APP_LAYER" == "http" ]]; then
	echo "CORRECT!!!!"
	echo "http is a Hypertext transfer Protocol used for web, and is an APPLICATION LAYER protocol.
	Like Secure Socket layer, file transfer protocol"
else [[ "$APP_LAYER" == "tcp" ]];
	echo "Try Again!"
fi
sleep 4
echo "This ifconfig will present your Network interface configurations"
ifconfig
sleep 1
echo "The route tool will present the routing table"
route -n
echo "lets know our active internet connections"
netstat -nt
sleep 1
echo "lets check the firewall rules in place"
sudo iptables -L

