
is_wifi_up ()
{
    output=$(sudo ip link show wlp3s0)
    return  "$output" =~ "state Up" 
}

output = is_wifi_up
if output then
    sudo ip link set wlp3s0 down
else
    sudo ip link set wlp3s0 up
fi
