FROM hypriot/rpi-alpine-scratch:v3.3
MAINTAINER Justin J. Novack <jnovack@gmail.com>

RUN apk update

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

RUN apk add --update openssl socat supervisor

COPY entrypoint.sh /usr/bin/entrypoint.sh

RUN chmod 755 /usr/bin/entrypoint.sh