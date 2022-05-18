#!/bin/bash
WHEREAMI=$(cat /tmp/whereami)
LC_ALL="en_US.utf8" cool-retro-term -T cool-magne --workdir "$WHEREAMI"
