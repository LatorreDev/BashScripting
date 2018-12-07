#! /bin/bash

# functions

function asterics()
{
s=$(printf "%-60s" "*")
echo "${s// /*}"
}

function echo_arch()
{
echo "          ___           _       _     _                  "
echo "         / _ \         | |     | |   (_)                 "
echo "        / /_\ \_ __ ___| |__   | |    _ _ __  _   ___  __ "
echo "        |  _  | '__/ __| '_ \  | |   | | '_ \| | | \ \/ / "
echo "        | | | | | | (__| | | | | |___| | | | | |_| |>  < "
echo "        \_| |_/_|  \___|_| |_| \_____/_|_| |_|\__,_/_/\_\\"
}

# main
asterics

echo_arch

asterics

# under construction

echo "script for Arch Linux Administration"
echo "made by David Latorre"
echo "latorredev.com"
