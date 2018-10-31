#! /bin/bash
# utf-8

default="Bogota"

echo "Weather in your terminal"


if [ ! -z $1 ]
then

if [ ! -z $1 ] 
then 
 master
    curl wttr.in/$1
else
    curl wttr.in/$default
fi

echo "Usage: weather-terminal.sh [city]"
echo "If no city is given the script defaults to $default"
weather


 master
