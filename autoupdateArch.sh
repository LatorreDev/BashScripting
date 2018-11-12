#!/bin/bash
echo '**************************************************'
echo '*     Script for autoupdate Arch & derivates     *'
echo '**************************************************'
echo ''

sudo pacman -Syu

echo "************************************"
echo "resizing /tmp folder to 12GB"
echo "************************************"

sudo mount -o remount,size=12G /tmp

echo "Folder size increased"

yaourt -Syua


