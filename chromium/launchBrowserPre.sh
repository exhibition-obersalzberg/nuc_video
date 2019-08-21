#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket
#Disable DPMS / Screen blanking
#xset -dpms
#xset s off
#xset s noblank
#/usr/bin/chromium --kiosk --no-sandbox --disable-features=TranslateUI --start-fullscreen -a file:///home/viewer/video/index.html --window-size=1920,1280
#su -c "/usr/bin/chromium --kiosk --noerrors --disable-session-crashed-bubble --incognito --disable-infobars --disable-features=TranslateUI --start-fullscreen -a file:///home/viewer/video/index.html --window-size=1920,1080" viewer
su -c "/usr/bin/chromium --kiosk --noerrors --disable-session-crashed-bubble --incognito --disable-infobars --disable-features=TranslateUI --start-fullscreen --window-size=1920,1080" viewer