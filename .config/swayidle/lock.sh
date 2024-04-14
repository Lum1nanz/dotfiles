#!/bin/bash

if [ -f "/usr/bin/swayidle" ]; then
    echo "swayidle is installed"
    swayidle -w timeout 20 'swaylock -f' timeout 360 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
else
    echo "swayidle is not installed"
fi