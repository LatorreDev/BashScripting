#!/bin/bash
echo "Script for computer info - Script para info de la computadora "
echo " "
echo "Script made by David Latorre - Script hecho por David Latorre"
echo "you can found source code at - Puede encontrar el código fuente en"
echo "https://github.com/DavidLatorre1990/BashScripting/blob/master/PC_Info_Script.sh"
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
 "Kernel Modules - Módulos del kernel"
 "Services - Servicios"
  "Quit - Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Kernel info - Información del kernel")
            uname -a
            echo "*************************"
            echo "* Para salir presione 7 *"
            echo "*************************"
            ;;
        "System Processes - Procesos del sistemas")
          ps -A | less
          echo "*************************"
          echo "* Para salir presione 7 *"
          echo "*************************"
          ;;
        "PCI devices info - Info para dispositivos PCI")
            lspci
            echo "*************************"
            echo "* Para salir presione 7 *"
            echo "*************************"
            ;;
        "USB devices info - Info para dispositivos USB ")
            lsusb | less
            echo "*************************"
            echo "* Para salir presione 7 *"
            echo "*************************"
            ;;
        "Kernel Modules - Módulos del kernel")
            lsmod | less
            echo "*************************"
            echo "* Para salir presione 7 *"
            echo "*************************"
            ;;
        "Services - Servicios")
            sudo systemctl status
            echo "*************************"
            echo "* Para salir presione 7 *"
            echo "*************************"
            ;;

        "Quit - Salir")
            break
            ;;
        *) echo invalid option;;
    esac
done
