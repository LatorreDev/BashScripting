#!/bin/bash

TIMEZONES=(
    'America/Los_Angeles' 
    'America/Bogota' 
    'America/New_York' 
    'Europe/London'
    'Europe/Lisbon'
    'Europe/Stockholm'
    'Asia/Shanghai'
    )

for timezone in ${TIMEZONES[@]}; do
    printf '%-20s' "$timezone"
    TZ=$timezone date +'%H:%M %h %d %z %Z'
done

