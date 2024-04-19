#!/bin/bash
# Script for delete a custom uuid vdi disk on virtualbox
# Made by David Latorre hhtps://latorredev.com
echo "Script for delete a uuid vdi disk of virtualbox"
sleep 2
echo "Listing uuid vdi disks: "
sleep 1
echo "Copy and paste the disk's uuid"
VBoxManage list hdds
echo "Enter the uuid disk to delete: "
read uuid_number
VBoxManage closemedium disk $uuid_number --delete
