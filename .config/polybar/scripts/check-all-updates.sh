#!/bin/bash

updates="$({ yay -Qu && pacman -Qu; } 2>/dev/null)"
[[ -z $updates ]] && printf "N/D" || wc -l <<< "$updates"
