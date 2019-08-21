FROM resin/intel-nuc-debian:stretch

USER root
ENV UDEV=1
ENV INITSYSTEM on
ENV DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

RUN apt-get update && apt-get install -y --no-install-recommends \
chromium \
alsa-utils \
xorg \
xinit \
xinput \
xserver-xorg \
xserver-xorg-legacy \
xserver-xorg-input-evdev \
xserver-xorg-input-libinput \
x11-xserver-utils && \
apt-get clean && rm -rf /var/lib/apt/lists/*

COPY ./user /user/

RUN sed -i 's|allowed_users=console|allowed_users=anybody|' /etc/X11/Xwrapper.config

RUN groupmod -g 19 input

RUN groupadd viewer && \
#adduser -p $6$XdU3yTuH$0v1JhpPWq3EvNZy.HEZsHws0U5nbJEIbYOIcwipatlnJ3lKG67nHNN/fFCodG1m0VIBDoxYs5YTH/7H7fUHcK/ --gecos "" --home /home/viewer --ingroup viewer viewer && \
useradd -m -g viewer -p $6$XdU3yTuH$0v1JhpPWq3EvNZy.HEZsHws0U5nbJEIbYOIcwipatlnJ3lKG67nHNN/fFCodG1m0VIBDoxYs5YTH/7H7fUHcK/ -s /bin/bash viewer && \
usermod -aG tty viewer && \
usermod -aG input viewer

COPY entrypoint.sh /home/viewer/entrypoint.sh
COPY launchBrowser.sh /home/viewer/launchBrowser.sh
COPY launchBrowserPre.sh /home/viewer/launchBrowserPre.sh
COPY xsetup.sh /home/viewer/xsetup.sh
COPY asound.conf /etc/asound.conf
COPY Preferences /home/viewer/Preferences
RUN chmod +x /home/viewer/*
RUN chown viewer:viewer /home/viewer/*

CMD [ "/bin/bash", "/home/viewer/entrypoint.sh" ]