# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:  https://github.com/ngacareer
# Twitter: https://twitter.com/ngacareer
# Docker:  https://hub.docker.com/ngacareer
# web   :  https://ngacareer.com

FROM alpine

MAINTAINER TriuHv [...]

ENV CURL_VERSION 7.74.0

RUN apk --update --no-cache add busybox busybox-extras curl openssl openssl-dev dumb-init ca-certificates
RUN apk --update --no-cache --virtual add g++ make perl

RUN wget https://curl.haxx.se/download/curl-$CURL_VERSION.tar.bz2 \
    && tar xjvf curl-$CURL_VERSION.tar.bz2 \
    && rm curl-$CURL_VERSION.tar.bz2 \
    && cd curl-$CURL_VERSION \
    && ./configure \
          --prefix=/usr \
          --with-ssl \
          --enable-ipv6 \
          --enable-unix-sockets \
          --without-libidn \
          --disable-static \
          --disable-ldap \
          --with-pic \
    && make \
    && make install \
    && cd / \
    && rm -r curl-$CURL_VERSION \
    && rm -r /var/cache/apk \
    && rm -r /usr/share/man

RUN printf '%s\n' \
  '#!/bin/sh' \
  '' \
  'while true' \
  'do' \
  'sleep 15' \
  'done' \
> /run/entrypoint.sh && chmod a+x /run/entrypoint.sh

ENTRYPOINT ["/usr/bin/dumb-init", "/run/entrypoint.sh"]
