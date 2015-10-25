#!/bin/bash

if [ "$1" = "dual" ]; then
  xrandr --output HDMI2 --auto --right-of eDP1 --output DP1 --auto
fi
if [ "$1" = "hdmi" ]; then
  xrandr --output HDMI2 --auto --output eDP1 --off
fi
if [ "$1" = "laptop" ]; then
  xrandr --output HDMI2 --off --output eDP1 --auto
fi

~/.fehbg
