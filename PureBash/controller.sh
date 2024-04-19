#!/usr/bin/env bash
# Start xbox 360 driver
modprobe uinput
modprobe joydev
sudo xboxdrv --silent &
