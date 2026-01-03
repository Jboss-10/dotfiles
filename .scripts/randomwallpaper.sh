#!/bin/fish
wal -i ~/wallpapers/Simon/ --saturate 0.3
pywalfox update
~/.scripts/setbspwmcolors.sh
betterlockscreen -u (cat ~/.cache/wal/wal)
