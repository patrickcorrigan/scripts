 #/bin/bash

 #A simple popup showing network information
 IP=$(ip a | grep inet)

 (
 # The following lines go to slave window
 echo "IP: $IP"
 ) | dzen2 -p -fn "Uushi:size=9" -x "520" -y "0" -w "110" -sa 'l' -ta 'c'\
     -e 'onstart=uncollapse;button1=exit;button1=exit'

 # "onstart=uncollapse" ensures that slave window is visible from start.
