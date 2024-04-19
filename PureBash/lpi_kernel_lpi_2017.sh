##!/bin/bash

################################################################################
#                     REPUBLICA BOLIVARIANA DE VENEZUELA 
#
# NOMBRE: LINUX POST INSTALL - SCRIPT BICENTENARIO (LPI-SB)
# VERSIÓN: 7.0+0
# TIPO DE PROGRAMA: SISTEMA EXPERTO
# FUNCIÓN: ASISTENTE TECNICO PARA S.O. GNU/LINUX BASADOS EN DEBIAN
# NOMBRE CODIGO: NOBILIS COR (LPI-SB 7.0+0)
# PAIS ORIGEN: REPUBLICA BOLIVARIANA DE VENEZUELA
# CREADO POR: JOSE JOHAN ALBERT IZAIPE
# EMAIL: albertccs1976@hotmail.com
# NOMBRE FACEBOOK: Linux Post Install
# PAGINA PERSONAL FACEBOOK: http://www.facebook.com/linuxpostinstall
# COMUNIDAD FACEBOOK: http://www.facebook.com/pages/Script-Bicentenario/159467280799041
# TWITTER: @albertccs1976
# TELEFONO: 0416.838.9787
# PROMOCIONADO POR: PROYECTO TIC - TAC
# PAGINA WEB DEL PROYECTO TIC - TAC: http://www.proyectotictac.wordpress.com/
# FECHA DE LANZAMIENTO DE LA PRIMERA VERSIÓN (1.0): 07/12/2010
# FECHA DE LANZAMIENTO DE LA VERSION ACTUAL (7.0+0): 01/01/2015
# FECHA DE ULTIMA ACTUALIZACIÓN: 01/05/2017
################################################################################


################################################################################
#
# Derechos de autor:
# 
# Copyleft (C) 2015 Jose Johan Albert Izaipe
# 
# Licenciamiento:
#
# El Linux Post Install – Script Bicentenario no viene con ninguna garantía. El 
# Autor no se hace responsable si se al aplicarse el Sistema Operativo se
# corrompe, daña o inutiliza.
#
# El Linux Post Install – Script Bicentenario es una aplicación de Software 
# Libre, por lo tanto usted puede redistribuirlo y / o modificarlo bajo los
# términos de la Licencia Pública General de GNU publicada por la Free Software
# Foundation, ya sea la versión 3 o cualquier versión posterior, según sea de su
# preferencia.
#
# Este programa se distribuye con la esperanza de que sea útil, pero SIN NINGUNA
# GARANTÍA, incluso sin la garantía implícita de COMERCIALIZACIÓN o IDONEIDAD
# para un propósito particular. Vea la Licencia Pública General de GNU para más
# detalles.
#
# Procure obtener una copia de la Licencia Pública General de GNU para estar al
# tanto sobre lo estipulado por la misma.
#
# Consultela en:
#
# <http://www.gnu.org/licenses/>.
################################################################################


################################################################################
# INICIO DEL MODULO DE PLUGIN FLASH PLAYER                                      
################################################################################

DIR_INICIO=$(echo $PWD)
USER_NAME=$(cat /etc/passwd | grep 1001 | cut -d: -f1)
# Sustituya el numero 1001 por el IDUSER del Usuario donde desea crear los
# enlaces simbolicos (accesos directos) del programa a instalar.
HOME_USER_NAME=/home/$USER_NAME
kernel=`uname -r`
clear
echo " "
echo " "
echo " Su version actual de kernel instalado es: $kernel"
echo " "
echo " "
echo " Se procedera a instalar los paquetes necesarios para la compilacion del nuevo Kernel"
echo "  Introduzca el numero de Version de Kernel a instalar (Ejemplo: 2.3.6, 3.19 o 4.0): "
read NUM_VER
NV=${NUM_VER}
sleep 3
echo ""
echo ""
echo " CONFIRME QUE ESTE ES EL PAQUETE DE KERNEL QUE COLOCO PARA SU INSTALACION"
echo ""
echo ""
echo " linux-$NV.tar.xz"
echo ""
echo ""
echo " EN CASO DE NO SER CIERTO, CANCELE EL PROCESO CON CTRL+C, DE LO CONTRARIO"
echo " ESPERE 15 SEGUNDOS MIENTRAS EL PROGRAMA CONTINUA EL PROCESO DE INSTALACION."
echo ""
echo ""
sleep 15
apt install kernel-package build-essential libncurses5-dev libssl-dev fakeroot -y
cd /usr/src
mv $DIR_INICIO/linux-$NV.tar.xz . 
tar Jxvf linux-$NV.tar.xz 
ln -s linux-$NV linux
cd /usr/src/linux
make clean && make mrproper
cp /boot/config-$kernel ./.config
echo ""
echo ""
echo " SE ABRIRA EL MENU DE CONFIGURACION DEL KERNEL, CONFIGURE LOS PARAMETROS"
echo " DE SU ELECCION, EN CASO DE SER NECESARIO. SOLO RECUERDE MARCAR O"
echo " DESMARCAR LA OPCION DE 64 BIT DEPENDIENDO DEL TIPO DE KERNEL A GENERAR."
echo ""
echo " LUEGO SALVE LA CONFIGURACION PRESIONANDO EL BOTON DE GUARDAR (SAVE) Y"
echo " DESPUES PRESIONANDO EL BOTON DE SALIR (EXIT)"
echo ""
echo " EN CASO DE NO SER CIERTO, CANCELE EL PROCESO CON CTRL+C, DE LO CONTRARIO"
echo " ESPERE 30 SEGUNDOS MIENTRAS EL PROGRAMA CONTINUA EL PROCESO DE INSTALACION."
echo ""
echo ""
sleep 30
make menuconfig
make-kpkg clean
###############################################################################
# HABILITE LAS ULTIMAS 3 ORDENES SI OCURRE EL SIGUIENTE ERROR:
# 
# make[1]: *** [certs] Error 2, necesario para 'certs/x509_certificate_list'.
#
# sed -i 's/CONFIG_MODULE_SIG_KEY/#CONFIG_MODULE_SIG_KEY/' /usr/src/linux/.config
# sed -i 's/CONFIG_SYSTEM_TRUSTED_KEYRING/#CONFIG_SYSTEM_TRUSTED_KEYRING/' /usr/src/linux/.config
# sed -i 's/CONFIG_SYSTEM_TRUSTED_KEYS/#CONFIG_SYSTEM_TRUSTED_KEYS/' /usr/src/linux/.config
###############################################################################
###############################################################################
# HABILITE LAS ULTIMAS 3 ORDENES SI OCURRE EL SIGUIENTE ERROR:
# 
# install: no se puede efectuar `stat' sobre 'REPORTING-BUGS': No existe el fichero o el directorio
#
# touch /usr/src/linux-4.11/REPORTING-BUGS
# chmod 664 /usr/src/linux-4.11/REPORTING-BUGS
###############################################################################
fakeroot make-kpkg --initrd --append-to-version=-custom kernel_image kernel_headers
cd /usr/src
rm -f linux-$NV.tar.xz
dpkg -i *.deb
clear

################################################################################
# FINAL DEL MODULO DE COMPILACION DEL KERNEL PARA DEBIAN                                   
################################################################################
