FROM jwater7/obs-studio-headless
LABEL maintainer "Redstoneguy129"

RUN apt-get update && apt-get install -y obs-studio
