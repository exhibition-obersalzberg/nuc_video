FROM resin/intel-nuc-debian:stretch

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
chromium \
xorg \
xinit \
xinput \
xserver-xorg \
xserver-xorg-legacy \
xserver-xorg-input-evdev \
xserver-xorg-input-libinput \
x11-xserver-utils && \
apt-get clean && rm -rf /var/lib/apt/lists/*

RUN sed -i 's|allowed_users=console|allowed_users=anybody|' /etc/X11/Xwrapper.config

RUN groupmod -g 19 input

RUN groupadd viewer && \
adduser --disabled-password --gecos "" --home /home/viewer --ingroup viewer viewer && \
usermod -aG tty viewer && \
usermod -aG input viewer

COPY entrypoint.sh /home/viewer/entrypoint.sh
COPY launchBrowser.sh /home/viewer/launchBrowser.sh
COPY video.mp4 /home/viewer/
RUN chmod +x /home/viewer/*
RUN chown viewer:viewer /home/viewer/*

CMD [ "/bin/bash", "/home/viewer/entrypoint.sh" ]