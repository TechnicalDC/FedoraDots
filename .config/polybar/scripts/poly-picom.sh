#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	polybar-msg hook picom-toggle 2
	killall picom
	notify-send -a 'Picom' 'Picom killed.' -t 3000 -i 'picom' 
else
	polybar-msg hook picom-toggle 1
	picom -b --config ~/.config/picom/picom.conf --experimental-backends
	notify-send -a 'Picom' 'Picom launched.' -t 3000 -i 'picom'
fi
