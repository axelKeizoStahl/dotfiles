#!/bin/bash

choice=$(printf '%s\n' POWEROFF RESTART LOCK | wofi --dmenu)
pswd=*password*

case $choice in
    POWEROFF)
        notify-send 'Shutting down';
        sleep 2;
        echo $pswd | sudo -S systemctl shutdown;
    ;;
    REBOOT)
        notify-send 'Rebooting';
        sleep 2;
        echo $pswd | sudo -S reboot;
    ;;
    LOCK)
        notify-send 'Locking screen';
        sleep 2;
        swaylock -i /home/axel/.config/sway/wall1.jpg;
    ;;
esac
