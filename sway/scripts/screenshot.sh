file=$(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')

slurp | grim -g - $file
notify-send "Screenshot Taken: $file"
wl-copy < $file
