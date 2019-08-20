#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
#Disable DPMS / Screen blanking
#xset -dpms
#xset s off
#xset s noblank
url=$url
default='http://scripty2.com/demos/touch/'
su -c "/usr/bin/chromium --kiosk --start-fullscreen -a file:///home/viewer/video.mp4 --window-size=1920,1280" viewer