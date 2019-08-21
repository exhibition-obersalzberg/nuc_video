#!/bin/bash
sleep 10
xset -display :0 s noblank		# Screen Saver:			prefer blanking:  no    allow exposures:  yes
xset -display :0 s off			# DPMS (Energy Star):	Standby: 0	Suspend: 0    Off: 0
xset -display :0 -dpms			# DPMS (Energy Star):	DPMS is Disabled
xset -display :0 s 0 0			# Screen Saver:			timeout:  0    cycle:  0
xset -display :0 dpms 0 0 0		# DPMS (Energy Star):	DPMS is Enabled	Monitor is On
echo "XINIT DONE"
