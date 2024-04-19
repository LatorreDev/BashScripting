#!/bin/bash
# Script for create a wifi hotspot, created by David Latorre. latorredev.com

echo '************************************************************************'
echo '*       Automatized tool for create a wifi hotspot on Arch Linux       *'
echo '* You need to be connected through Ethernet Cable and have a wifi card *'
echo '************************************************************************'

options=("Install requirements"
	"List network interfaces"
	"Create wifi network"
	"Exit")

	select opt in "${options[@]}"
	do 
		case $opt in
		"Install requirements")
		echo "Installing requirements"
	       	sudo pacman -S screen create_ap
       		echo "Requirements installed"
 		;;

		"List network interfaces")
		echo "Listing network interfaces"
		sudo ip addr
		echo "Type the name of your wifi interface (Same uppercase characters)"
		read wifi_interface
		echo "Type the name of your ethernet interface (Same uppercase characters)"
		read eth_interface
		;;

		"Create wifi network")
		echo "Creating wifi network"
		echo "Type a name for the network to be created: "
		read net_name
		echo "Type a password for the network to be created:"
		read net_pass
		sudo screen_ap $wifi_interface $eth_interface $net_name $net_pass
		echo "Network created"
		;;

		"Exit")
		break
		;;
	
		*) echo "Invalid option"
		esac
	done		
