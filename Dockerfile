FROM dorowu/ubuntu-desktop-lxde-vnc
LABEL maintainer "Redstoneguy129"

RUN apt-get install -y software-properties-common curl \
    && add-apt-repository "ppa:obsproject/obs-studio" \
    && apt-get install -y --no-install-recommends ffmpeg obs-studio vlc
