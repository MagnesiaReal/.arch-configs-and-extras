#!/bin/sh

mb() {
  ls ~/Pictures/Wallpapers | while read A ; do  echo -en "$A\x00icon\x1f~/Pictures/Wallpapers/$A\n"; done | awk '{print NR, $0}' | rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/launcher_image.rasi -i -kb-custom-1 "Alt+q" -p "" "$@"
}

image=$(mb | awk '{print $2}');
cod=$?
[ ! "$image" ] && exit
pkill xwinwrap
image=~/Pictures/Wallpapers/$image
feh --bg-fill $image
