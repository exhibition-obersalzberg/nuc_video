#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

rm /home/viewer/video/*
cp /user/* /home/viewer/video
mount -o remount,size=1G /dev/shm
sed -i -e 's/\r$//' /home/viewer/xsetup.sh

(xinit /home/viewer/launchBrowserPre.sh -- -nocursor) &
while ! pgrep -x "chromium" > /dev/null; do
        sleep 2
        echo "Init Running"
done

while true; do
    sleep 5
    if pgrep -x "chromium" > /dev/null
    then
        echo "Setup"
        pkill chromium
        sleep 5
    else
        cp /home/viewer/Preferences /home/viewer/.config/chromium/Default/
        chown viewer:viewer /home/viewer/.config/chromium/Default/Preferences
        chmod 600 /home/viewer/.config/chromium/Default/Preferences
        echo "Running"
        #xinit /home/viewer/launchBrowser.sh -- -nocursor
        /home/viewer/xsetup.sh &
        xinit /home/viewer/launchBrowser.sh --
    fi
done