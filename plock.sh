#!/bin/bash

if ! [[ "$1" =~ ^[0-9]+$ ]] ; then
  printf "please provide a pixel size!\n$ pixel-lock.sh <pixel_size>\n"
  exit 1
fi

size_val="$1"
scale_down=$(echo 100 / $size_val | bc -l)
scale_up=$(echo 10000 / $scale_down | bc -l)
lock_img="/tmp/lockscreen.png"

DISPLAY=:0 scrot $lock_img # screenshot image
trap "rm $lock_img" EXIT # remove image on exit
convert $lock_img -scale $scale_down% -scale $scale_up% $lock_img # pixelate image
DISPLAY=:0 i3lock -u -i $lock_img # lock screen with image
