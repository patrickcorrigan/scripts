 #/bin/bash

 #A simple popup showing bank balance information
 BANK_BALANCE=$(python bank.py)
 (
 # The following lines go to slave window
 echo "€$BANK_BALANCE"
 ) | dzen2 -p -fn 'Uushi:size=9' -x "920" -y "0" -w "60" -sa 'c' -ta 'c'\
     -e 'onstart=uncollapse;button1=exit;button1=exit'

 # "onstart=uncollapse" ensures that slave window is visible from start.
