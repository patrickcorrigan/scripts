#!/bin/bash

DISPLAY=":0.0"
HOME=/home/patrick/
XAUTHORITY=$HOME/.Xauthority

export DISPLAY XAUTHORITY HOME
 
function connect(){
xrandr --auto --output HDMI1 --mode 1600x900 --right-of LVDS1
}
 
function disconnect(){
xrandr --auto
}
 
xrandr | grep "HDMI1 connected" &> /dev/null && connect || disconnect
sh ~/.fehbg &
