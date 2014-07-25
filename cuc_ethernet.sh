sudo ip link set enp2s0f0 up
sudo ip addr add 143.239.71.59/24 dev enp2s0f0
sudo ip route add via 143.239.71.254 dev enp2s0f0
