wifi_status_output=$(sudo ip link show wlp3s0)

if [[ $wifi_status_output == *state\ UP* ]]
then
    sudo ip link set wlp3s0 down
  else
    sudo ip link set wlp3s0 up
fi
