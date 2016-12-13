FROM hypriot/rpi-alpine-scratch:latest
Maintainer @protenhan

RUN apk update \ 
 && apk upgrade \
 && apk add git \
            bash \
            curl \
 && git clone https://github.com/mdmower/bash-no-ip-updater.git \
 && chmod +x /bash-no-ip-updater/noipupdater.sh \
 && touch /bash-no-ip-updater/config

ENV USERNAME "email@address.com"
ENV PASSWORD "password"
ENV HOST "host.domain.com"

CMD ["/bash-no-ip-updater/noipupdater.sh"]
