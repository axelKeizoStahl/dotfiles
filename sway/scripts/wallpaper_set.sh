#!/usr/bin/bash

killall swaybg

file=$(/bin/ls -d /home/axel/.config/sway/wallpapers/* | shuf -n 1)

swaybg -i $file
