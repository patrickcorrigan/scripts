 #/bin/bash

 #A simple popup showing network information
 IP=$(ip a | grep inet)

 (
 # The following lines go to slave window
 echo "IP: $IP"
 ) | dzen2 -p -fn "SourceCodePro:size=8" -x "435" -y "20" -w "350" -sa 'l' -ta 'c'\
     -e 'onstart=uncollapse;button1=exit;button1=exit'

 # "onstart=uncollapse" ensures that slave window is visible from start.
