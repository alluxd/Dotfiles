#!/bin/bash

# Use slurp to get a region
region=$(slurp)

# If the user cancels (i.e. presses Esc), slurp returns empty, so we quit
if [ -z "$region" ]; then
  exit 1
fi

# Take screenshot with grim and temporarily save it to /tmp/
grim -g "$region" /tmp/ss.png

# Format name and save it
fname="ss_$(date +%F_%H-%M-%S).png"
cp /tmp/ss.png ~/Pictures/Screenshots/"$fname"

# Copy to clipboard
wl-copy </tmp/ss.png

# Notify user and remove the temporarily made screenshot
notify-send -i /tmp/ss.png "📷 Screenshot taken." "Screenshot was copied to the clipboard and saved."
rm /tmp/ss.png
