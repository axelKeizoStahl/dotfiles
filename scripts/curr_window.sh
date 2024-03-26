#!/usr/bin/bash

WORKSPACE_INFO=$(swaymsg -t get_workspaces)
WORKSPACE_NUM=$(echo "$WORKSPACE_INFO" | jq -r '.[] | select(.focused==true) | .name' | grep -o -E '^[0-9]+')
echo $WORKSPACE_NUM
