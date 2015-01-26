function is_muted {
    volume_status=$(amixer -c 0 get Master | grep Mono: | cut -d " " -f8 | tr -d "[]")
    if [ $volume_status == 'on' ]
    then
        return 0
    else
        return 1
    fi
}

function get_volume {
    amixer -c 0 get Master | grep Mono: | cut -d " " -f6 | tr -d "[]%"
}

is_muted = $(is_muted)
if is_muted
then
    get_volume
else
    echo Mute
fi
