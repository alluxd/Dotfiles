#!/usr/bin/env bash

# Kill any existing Waybar instance
killall waybar

# Restart Waybar in the background
waybar &

# Send a notification via dunst
# you can use `dunstify` if installed, otherwise notify-send works too
dunstify "Waybar reloaded!" || notify-send "Waybar reloaded!"

