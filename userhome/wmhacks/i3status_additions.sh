#!/usr/bin/env bash
# shell scipt to prepend i3status with more stuff

i3status | while :
do
        read line
        LG=$(xkblayout-state print %n | cut -d"%" -f1) 
        echo "LG: $LG | $line" || exit 1
done
