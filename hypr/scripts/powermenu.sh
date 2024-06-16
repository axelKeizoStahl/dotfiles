#!/bin/bash

choice=$(printf '%s\n' POWEROFF RESTART LOCK | wofi --dmenu)

case $choice in
    POWEROFF)
        notify-send 'Shutting down';
        sleep 2;
        systemctl poweroff;
    ;;
    RESTART)
        notify-send 'Rebooting';
        sleep 2;
        echo keizopigeon | sudo -S reboot;
    ;;
    LOCK)
        notify-send 'Locking screen';
        sleep 2;
        swaylock -i /home/axel/.config/sway/wall1.jpg --effect-vignette 0.5:0.5 --clock --indicator-radius 100 --indicator-thickness 7  --ring-color ebdbb2 --key-hl-color 282828 --line-color 00000000 --inside-color 00000088 --separator-color 00000000 --fade-in 0.2;
    ;;
esac
