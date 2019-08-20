#!/bin/bash

#udevd &
#udevadm trigger
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

rm /video/*
cp /user/* /video

#omxplayer -p -o hdmi --loop /video/2.mp4

#sudo usermod -a -G video viewer
#chmod +x /chromium.sh
#xinit /chromium.sh – -nocursor

xinit /home/viewer/launchBrowser.sh – -nocursor
while true; do
    echo "Running"
    sleep 60
done