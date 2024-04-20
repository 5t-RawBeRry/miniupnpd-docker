FROM alpine:edge
LABEL org.opencontainers.image.source=https://github.com/5t-RawBeRry/miniupnpd-docker

RUN apk add --no-cache miniupnpd
RUN rm -rf /var/cache/apk/*

VOLUME /etc/miniupnpd/miniupnpd.conf
ENTRYPOINT ["miniupnpd", "-d", "-f", "/etc/miniupnpd/miniupnpd.conf"]
