sudo rfkill block wifi
sudo modprobe -r bcm5974
sleep 2
sudo systemctl hibernate
sleep 2
sudo rfkill unblock wifi
sudo modprobe bcm5974
