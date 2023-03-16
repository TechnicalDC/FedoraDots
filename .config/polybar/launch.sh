#!/usr/bin/env bash

DARK_CONFIG=$HOME/.config/polybar/config_transparent_dark
LIGHT_CONFIG=$HOME/.config/polybar/config_transparent_light

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		if [ $2 == "dark" ] ; then
			MONITOR=$m polybar -c $DARK_CONFIG --reload $1 &
		fi

		if [ $2 == "light" ] ; then
			MONITOR=$m polybar -c $LIGHT_CONFIG --reload $1 &
		fi
	done
else
	polybar -c $LIGHT_CONFIG --reload $1 &
fi

echo "Bars launched..."
