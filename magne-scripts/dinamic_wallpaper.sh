#!/bin/sh
# you need shantz-xwinwrap-bzr and mpv to reproduce dinamic wallpapers
pkill xwinwrap

xwinwrap -ov -fs -ni -s -nf -b -- mpv -wid WID "$1" --no-osc --no-osd-bar --loop-file --player-operation-mode=cplayer --no-audio --panscan=1.0 --no-keepaspect --no-input-default-bindings 
