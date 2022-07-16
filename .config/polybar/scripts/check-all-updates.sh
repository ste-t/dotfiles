#!/bin/sh
#source https://github.com/x70b1/polybar-scripts

#if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
#    updates_arch=0
#fi

# if ! updates_aur=$(cower -u 2> /dev/null | wc -l); then
if ! updates=$((yay -Qu 2> /dev/null && pacman -Qu 2> /dev/null) | wc -l); then
    updates=-1
fi

#updates=$(("$updates_arch" + "$updates_aur"))

if [ "$updates" -gt -1 ]; then
    echo "$updates"
else
    echo "N/D"
fi

