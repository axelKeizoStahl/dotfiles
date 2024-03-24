#!/usr/bin/bash

echo $(expr $(swaymsg -t get_workspaces | jq -r '.[] | select(.focused==true) | .name' | grep -o -E '^[0-9]+') + 1)
