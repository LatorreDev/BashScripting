#!/bin/bash
echo '*******************************************'
echo '*     Script para LAMP Server en Arch     *'
echo '*******************************************'
echo ''
Mesg='Please enter your choice - Por favor escoja su opción: '
echo ''
options=("Iniciar base de datos y apache"
"Reiniciar base de datos y apache"
"Detener base de datos y apache"
"Salir")
select opt in "${options[@]}"
do
    case $opt in
        "Iniciar base de datos y apache")
echo 'iniciando Apache'
sudo systemctl start httpd.service
echo 'Apache iniciado'
echo '****************'
echo '****************'
echo 'iniciando MariaDB'
sudo systemctl start mysqld
echo 'MariaDB iniciado'
echo '****************'
echo '****************'
;;

"Reiniciar base de datos y apache")
echo 'reiniciando Apache'
sudo systemctl restart httpd.service
echo 'Apache reiniciado'
echo '****************'
echo '****************'
echo 'reiniciando MariaDB'
sudo systemctl restart mysqld
echo 'MariaDB reiniciado'
echo '****************'
echo '****************'
;;


"Detener base de datos y apache")
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

