#!/bin/bash

input=$(echo "" | wofi --dmenu --style ~/.config/waybar/quicksearch.css -L 0 -b -l=0 -W 50% -H 5% -p "Enter Text > ")

regex='^(https?|ftp|file)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]\.[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]$'
if [ "${input}" != "" ]; then
  if [[ "https://${input}" =~ $regex ]]; then
    firefox -new-window "https://${input}"
  else
    input=$(echo "${input// /+}")
    firefox -new-window "https://searx.daetalytica.io/search?q=${input}"
  fi
fi

