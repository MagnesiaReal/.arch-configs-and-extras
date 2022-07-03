#!/bin/sh

mb() {
  ls ~/Videos/wallpapers | while read A ; do  echo -en "$A\n"; done | awk '{print NR, $0}' | rofi -dmenu -theme ~/.config/polybar/magneciareal/scripts/rofi/launcher_live.rasi -i -kb-custom-1 "Alt+q" -p "" "$@"
}

animation=$(mb | awk '{print $2}');
cod=$?
[ ! "$animation" ] && exit
animation=~/Videos/wallpapers/$animation
~/.config/magne-scripts/dinamic_wallpaper.sh $animation
