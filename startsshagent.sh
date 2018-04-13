#! /bin/bash
#Pause function

function pause()
{
	read -p 'Press any key to continue...'
}

echo "Script for auto start ssh agent and add your ssh private key to agent"
echo "Script para auto inicio del agente ssh y añadir tu clave ssh privada al agente"
echo " "
echo "Script made by David Latorre - Script hecho por David Latorre"
echo "you can found source code at - Puede encontrar el código fuente en"
echo "https://github.com/DavidLatorre1990/BashScripting/blob/master/startsshagent.sh"
echo "Licensed under GPL V 3.0, you can use, study, distributate and improve this script"
echo "Licenciado bajo GPL V 3.0, puedes usar, estudiar, distribuir y mejorar este script"
echo " "

echo "      .--."
echo "     |o_o |"
echo "     ||_/ | "
echo "    //   \ \ "
echo "   (|     | )"
echo "  /'\_   _/'\ "
echo "  \___)-(____) "
echo " "

#pause function

function pause()
{
        read -p 'Press any key to continue...'
}

echo "iniciando agente ssh"

sleep 1
#pause

eval "$(ssh-agent -s)"

echo "agente ssh iniciado - ssh agent starting"

sleep 1

echo 'agregando clave ssh privada - adding private ssh key'

ssh-add ~/.ssh/github_arch

sleep 1

echo -e 'clave ssh agregada \npuedes comprobarla con ssh-add -l'
echo -e 'ssh key added \nyou can verify with ssh-add -l'
