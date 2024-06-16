#!/usr/bin/bash

killall swaybg

# /bin/ls for aliases to ls like alias ls=lsd
file=$(/bin/ls -d ~/.config/hypr/wallpapers/* | shuf -n 1)

swaybg -i $file &
