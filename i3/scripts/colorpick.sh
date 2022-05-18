#!/bin/sh
COLOR_CODE=$(colorpicker --one-shot --preview)
echo $COLOR_CODE | rev | cut -d '#' -f 1 | rev | xclip -selection clipboard
notify-send COLOR "$COLOR_CODE"

