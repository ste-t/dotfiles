#!/bin/bash

OUTPUT="HDMI-A-0"

# xres, yres, refreshrate
addmode() {
  params=$(cvt "$1" "$2" "$3" | tail -1 | sed "s/[^ ]* *//" | tr -d '"')
  name=$(cut -d" " -f1 <<< "$params")

  xrandr --newmode $params 
  sleep .1
  xrandr --addmode "$OUTPUT" "$name"
}

addmode 2160 1620 60
addmode 1440 1080 60
addmode 1440 1080 30

xrandr --output "$OUTPUT" --mode "1440x1080_30.00" --right-of DisplayPort-2
