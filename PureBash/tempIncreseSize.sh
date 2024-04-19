#!/bin/ env bash
# Script to increase /tmp folder
echo "********************************************************"
echo "* Script para incrementar a 12 GB la capacidad de /tmp *"
echo "********************************************************"
sudo mount -o remount,size=12G /tmp
echo "Capacidad incrementada"
echo "Script made by David Latorre"
echo "github.com/latorredev"
