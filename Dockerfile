FROM hypriot/rpi-alpine:latest
Maintainer @protenhan

RUN apk update \ 
 && apk upgrade \
 && apk add git \
            bash \
            curl \
 && git clone https://github.com/mdmower/bash-no-ip-updater.git \
 && chmod +x /bash-no-ip-updater/noipupdater.sh \
 && touch /bash-no-ip-updater/config \
 && apk del git \
 && rm -rf /var/lib/apt/lists/*

COPY start.sh /start

ENV USERNAME "email@address.com"
ENV PASSWORD "password"
ENV HOST "host.domain.com"
ENV UPDATE_INTERVAL 30m

ENTRYPOINT ["/start"]
