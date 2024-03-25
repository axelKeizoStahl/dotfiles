#!/usr/bin/bash

CURR_WINDOW="\"$1\""

CURR_APPLICATION=$(swaymsg -t get_workspaces | jq ".[] | select(.name==$CURR_WINDOW) | .representation" | grep -oP '\[\K[^\s\]]+')
# NEXT STEPS
# look for app.desktop file in /usr/applications/
# use the Icon field to get the root of the file name
# look for root.png in /usr/share/icons/hicolor/256x256/apps/
echo $CURR_APPLICATION
