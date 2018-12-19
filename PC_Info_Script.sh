#!/bin/bash

#Function

function salir()
{
 echo "*************************"
 echo "* Para salir presione 8 *"
 echo "*************************"
}

echo "Script for computer info - Script para info de la computadora "
echo " "
echo "Script made by David Latorre - Script hecho por David Latorre"
echo "you can found source code at - Puede encontrar el código fuente en"
echo "https://github.com/Latorredev/BashScripting/blob/master/PC_Info_Script.sh"
echo "Licensed under GPL V 3.0, you can use, study, distributate and improve this script"
echo " "
echo "      .--."
echo "     |o_o |"
echo "     ||_/ | "
echo "    //   \ \ "
echo "   (|     | )"
echo "  /'\_   _/'\ "
echo "  \___)-(____) "
echo " "
Mesg='Please enter your choice - Por favor escoja su opción: '
options=("Kernel info - Información del kernel"
"System Processes - Procesos del sistemas"
"PCI devices info - Info para dispositivos PCI"
 "USB devices info - Info para dispositivos USB "
 "Ram info - Ver info de la memoria ram"
 "Kernel Modules - Módulos del kernel"
 "Services - Servicios"
  "Quit - Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Kernel info - Información del kernel")
            uname -a
            salir
            ;;
        "System Processes - Procesos del sistemas")
            ps -A | less
            salir
            ;;
        "PCI devices info - Info para dispositivos PCI")
            lspci
            salir
            ;;
        "USB devices info - Info para dispositivos USB ")
            lsusb | less
            salir
            ;;
        "Ram info - Ver info de la memoria ram")
           sudo dmidecode -t memory | less
           salir
            ;;
        "Kernel Modules - Módulos del kernel")
            lsmod | less
            salir
            ;;
        "Services - Servicios")
            sudo systemctl status
            salir
            ;;

        "Quit - Salir")
            break
            ;;
        *) echo invalid option;;
    esac
done
