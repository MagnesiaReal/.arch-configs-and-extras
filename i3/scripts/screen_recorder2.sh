#!/bin/sh

ffmpeg -f alsa -i default -f x11grab -r 25 -s 1024x768 -i :0.0+1920,312 \
  -acodec libmp3lame -async 1 -vcodec libx264 -preset ultrafast -crf 0 -threads 0 "/home/magneciareal/Videos/Records/output.mp4"

