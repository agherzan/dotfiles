#!/bin/bash

if [ "$1" = "dual" ]; then
  xrandr --output DP1 --auto --panning 2880x1800+2560+0 --scale 1.5x1.5 --right-of eDP1 --output eDP1 --auto
fi
if [ "$1" = "docking-dual" ]; then
  xrandr --output DP2 --auto --panning 2880x1800+2560+0 --scale 1.5x1.5 --right-of eDP1 --output eDP1 --auto
fi
if [ "$1" = "docking-only" ]; then
  xrandr --output DP2 --auto --panning 2880x1800+0+0 --scale 1.5x1.5 --output HDMI2 --auto --output eDP1 --off
fi
if [ "$1" = "laptop" ]; then
  xrandr --output eDP1 --auto --output HDMI2 --off --output DP1 --off --output DP2 --off
fi
if [ "$1" = "extern" ]; then
  xrandr --output DP1 --auto --panning 2880x1800+0+0 --scale 1.5x1.5 --output HDMI2 --auto --output eDP1 --off
fi
if [ "$1" = "hdmi" ]; then
  xrandr  --output eDP1 --off --output DP1 --off --output HDMI2 --mode 1920x1080i
fi
~/.fehbg
