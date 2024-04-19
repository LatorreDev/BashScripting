#!/bin/bash
# Password generator

genpasswd() { 
    local l=$1
        [ "$l" == ""  ] && l=16
        LC_CTYPE=C tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
        }

genpasswd
