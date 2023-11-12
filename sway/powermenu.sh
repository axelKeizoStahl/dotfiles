#!/bin/bash

choice=$(printf '%s\n' POWEROFF RESTART LOCK | wofi --dmenu)

case $choice in
    POWEROFF)
        notify-send 'Shutting down';
        sleep 2;
        systemctl shutdown;
    ;;
    REBOOT)
        notify-send 'Rebooting';
        sleep 2;
        reboot;
    ;;
    LOCK)
        notify-send 'Locking screen';
        sleep 2;
        swaylock -i /home/axel/.config/sway/wall1.jpg;
    ;;
esac
