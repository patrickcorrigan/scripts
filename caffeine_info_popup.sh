 #/bin/bash

 #A simple popup showing battery information
 BATTERY_TIME=Caffine On
 caffeine.sh 10 &

 (
 # The following lines go to slave window
 echo "Caffeine On"
 ) | dzen2 -p -fn 'Uushi:size=9' -x "859" -y "0" -w "61" -sa 'c' -ta 'c'\
     -e 'onstart=uncollapse;button1=exit;onexit=exec:pkill -f caffeine.sh'

 # "onstart=uncollapse" ensures that slave window is visible from start.
