#!/bin/bash

DISPLAY=":0.0"
HOME=/home/patrick/
XAUTHORITY=$HOME/.Xauthority

export DISPLAY XAUTHORITY HOME

sleep 2

test -f /home/patrick/.Xkeymap && xkbcomp /home/patrick/.Xkeymap $DISPLAY
