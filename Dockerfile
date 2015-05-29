FROM alpine:3.2
MAINTAINER mike@sloppy.io

RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    apk add --update musl@edge python py-pip bash git && \
    rm /var/cache/apk/*