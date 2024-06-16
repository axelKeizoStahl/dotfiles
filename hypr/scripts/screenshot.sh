file=$(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')

slurp | grim -g - $file
notify-send --app-name=Sway --icon $file "Screenshot Captured" "Screenshot Copied to Clipboard. Stored in ~/Pictures"
wl-copy < $file
