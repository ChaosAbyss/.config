#!/usr/bin/bash

# Terminate already running bar instances
killall -q polybar

 #Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

 # Launch polybar
#polybar -c ~/.config/polybar/gruvbox/config.ini main &
polybar -c ~/.config/polybar/config.ini main &
