is_sound=$(audio_output_check.sh)
echo $is_sound
if [ "$is_sound" = "0" ]; then
    systemctl suspend
else
    echo "Not sleeping"
fi
