#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

rm /video/*
cp /user/* /video

xinit /home/viewer/launchBrowser.sh – -nocursor
while true; do
    echo "Running"
    sleep 60
done