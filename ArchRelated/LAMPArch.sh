#!/bin/bash
echo '*******************************************'
echo '*     Script para LAMP Server en Arch     *'
echo '*******************************************'
echo 'Created by David Latorre - latorredev.com'
echo '*******************************************'
echo 'Please enter your choice - Por favor escoja su opción: '
echo ''
options=("Iniciar Apache"
"Iniciar motor de base de datos"
"Iniciar motor de bases de datos y Apache"
"Reiniciar apache"
"Reiniciar motor de base de datos"
"Detener apache"
"Detener Motor de base de datos"
"Detener motor de bases de datos y apache"
"Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Iniciar Apache")
echo 'iniciando Apache'
sudo systemctl start httpd.service
echo 'Apache iniciado'
echo '****************'
echo '****************'
;;

"Iniciar motor de base de datos")
echo 'iniciando MariaDB'
sudo systemctl start mysqld
echo 'MariaDB iniciado'
echo '****************'
echo '****************'
;;

"Iniciar motor de bases de datos y Apache")
echo 'iniciando Apache'
sudo systemctl start httpd.service
echo 'Apache iniciado'
echo '****************'
echo '****************'
echo 'iniciando MariaDB'
sudo systemctl start mysqld
echo 'MariaDB iniciado'
echo '****************'
;;

"Reiniciar apache")
echo 'reiniciando Apache'
sudo systemctl restart httpd.service
echo 'Apache reiniciado'
echo '****************'
echo '****************'
;;

"Reiniciar motor de base de datos")
echo 'reiniciando MariaDB'
sudo systemctl restart mysqld
echo 'MariaDB reiniciado'
echo '****************'
echo '****************'
;;

"Detener apache")
echo 'Deteniendo Apache'
sudo systemctl stop httpd.service
echo 'Apache detenido'
echo '****************'
echo '****************'
;;

"Detener Motor de base de datos")
sudo systemctl stop mysqld
echo 'MariaDB detenido'
echo '****************'
echo '****************'
;;

"Detener motor de bases de datos y apache")
echo 'Deteniendo Apache'
sudo systemctl stop httpd.service
echo 'Apache detenido'
echo '****************'
echo '****************'
echo 'Deteniendo MariaDB'
sudo systemctl stop mysqld
echo 'MariaDB detenido'
echo '****************'
echo '****************'
;;

"Salir")
    break
    ;;
*) echo invalid option;;
    esac
done
