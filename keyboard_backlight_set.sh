function set_backlight_value_to {
    sudo sh -c "echo $1 > /sys/class/leds/smc::kbd_backlight/brightness"
}


function increase_backlight_by {
    current=$(get_current_value)
    set_backlight_value_to $(($current + $1))
}

function decrease_backlight_by {
    current=$(get_current_value)
    set_backlight_value_to $(($current - $1))
}

function get_current_value {
    current=$(cat /sys/class/leds/smc::kbd_backlight/brightness)
    echo $current
}

while getopts ":i:d:" o; do
    case "${o}" in
        i)
            inc=${OPTARG}
            increase_backlight_by $inc
            break
            ;;
        d)
            dec=${OPTARG}
            get_current_value
            decrease_backlight_by $dec
            break
            ;;
    esac
done
shift $((OPTIND-1))
