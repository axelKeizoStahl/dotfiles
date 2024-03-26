#!/usr/bin/bash

curr_window="\"$1\""

curr_application=$(swaymsg -t get_workspaces | jq ".[] | select(.name==$curr_window) | .representation" | grep -oP '\[\K[^\s\]]+')

if [ $? -eq 0 ]
then 
    echo "Current (main) application in workspace $curr_window: $curr_application"
    echo "Logo path for $curr_application: /usr/share/icons/hicolor/256x256/apps/$curr_application.png"
else
    echo "Currently no application opened in workspace $curr_window"
fi
