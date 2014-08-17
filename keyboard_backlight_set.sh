if [ $1 -gt -1 ] && [ $1 -lt 256 ]
then
    sudo sh -c "echo $1 > /sys/class/leds/smc::kbd_backlight/brightness"
else
    echo bad value
fi
