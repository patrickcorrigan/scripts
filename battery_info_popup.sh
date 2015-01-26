 #/bin/bash

 #A simple popup showing battery information
 BATTERY_TIME=$(conky -t '${battery_time}' -i 1)

 (
 # The following lines go to slave window
 echo "$BATTERY_TIME"
 ) | dzen2 -p -fn 'Uushi:size=9' -x "635" -y "0" -w "60" -sa 'c' -ta 'c'\
     -e 'onstart=uncollapse;button1=exit;button1=exit'

 # "onstart=uncollapse" ensures that slave window is visible from start.
