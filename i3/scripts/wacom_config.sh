#!/bin/sh

# for left handed
xsetwacom --set "HUION H420 stylus" rotate half 

# Map to screen
# available: DVI-0, VGA-0
xsetwacom --set "HUION H420 stylus" MapToOutput $1

