#!/bin/bash
echo "Script for computer info - Script para info de la computadora "
echo " "
echo "Script made by David Latorre - Script hecho por David Latorre"
echo "you can found source code on "
echo "Licensed under GPL V 3.0, you can modify, share, copy"
echo " "
echo "    .--."
echo "   |o_o |"
echo "   ||_/ | "
echo "  //   \ \ "
echo " (|     | )"
echo "/'\_   _/'\ "
echo "\___)-(____) "
echo " "
Mesg='Please enter your choice - Por favor escoja su opción: '
options=("PCI devices info - Info para dispositivos PCI" "USB devices info - Info para dispositivos USB "
 "Kernel Modules - Módulos del kernel" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "PCI devices info - Info para dispositivos PCI")
            lspci
            echo "*************************"
            echo "* Para salir presione 4 *"
            echo "*************************"
            ;;
        "USB devices info - Info para dispositivos USB ")
            lsusb
            echo "Para salir presione 4"
            ;;
        "Kernel Modules - Módulos del kernel")
            lsmod
            echo "Para salir presione 4"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
