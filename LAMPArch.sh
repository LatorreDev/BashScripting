#!/bin/bash
echo '*******************************************'
echo '* Script para iniciar LAMP Server en Arch *'
echo '*******************************************'
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
