#!/bin/sh

mb() {
  ls ~/Pictures/Wallpapers | while read A ; do  echo -en "$A\x00icon\x1f~/Pictures/Wallpapers/$A\n"; done | awk '{print NR, $0}' | rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/launcher.rasi -p ""
}

image=$(mb | awk '{print $2}');
image=~/Pictures/Wallpapers/$image
echo $image
[ ! "$image" ] && exit
feh --bg-fill $image
