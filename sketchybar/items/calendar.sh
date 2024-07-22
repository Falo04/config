#!/bin/bash

sketchybar --add item calendar right \
           --set calendar icon=􀧞  \
                          update_freq=30 \
                          icon.color=$WHITE \
                          label.color=$WHITE \
                          background.color=$ACCENT_COLOR\
                          script="$PLUGIN_DIR/calendar.sh"
