#!/bin/fish

set title (playerctl metadata | grep title | awk '{$1=$2=""; print $0}')
set album (playerctl metadata | grep album | awk '{$1=$2=""; print $0}')
set artist (playerctl metadata | grep artist | awk '{$1=$2=""; print $0}')
set artUrl (playerctl metadata | grep artUrl | awk '{print $3}')

set title (string trim $title)
set album (string trim $album)
set artist (string trim $artist)

echo (playerctl status) $title by $artist
