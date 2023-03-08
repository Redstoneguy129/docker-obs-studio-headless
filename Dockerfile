FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL maintainer "Redstoneguy129"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -y software-properties-common curl \
    && add-apt-repository "ppa:obsproject/obs-studio" \
    && apt-get install -y --no-install-recommends \
        ffmpeg \
        obs-studio \
        vlc \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*
