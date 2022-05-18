#!/bin/bash

TMP_AVI=$(mktemp /tmp/outXXXXXXXXXX.avi)
GIF_FILE="/home/$USER/Videos/gifs/$(date +'%Y-%m-%d-%H:%M:%S').mp4"
echo $TMP_AVI
kitty --class "screen_gif_kitty" \
ffcast -s % ffmpeg -y -f x11grab -show_region 1 -framerate 15 \
    -video_size %s -i %D+%c -codec:v huffyuv                  \
    -vf crop="iw-mod(iw\\,2):ih-mod(ih\\,2)" $TMP_AVI         \
    && ffmpeg -i $TMP_AVI -pix_fmt rgb24 $GIF_FILE && rm $TMP_AVI
