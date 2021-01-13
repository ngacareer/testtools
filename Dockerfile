FROM alpine:3.12

RUN apk --update --no-cache add busybox \
    && apk --no-cache add busybox-extras \
    && apk --no-cache add curl

RUN printf '%s\n' \
  '#!/bin/sh' \
  '' \
  'while true' \
  'do' \
  'sleep 15' \
  'done' \
> /run/init.sh && chmod a+x /run/init.sh

ENTRYPOINT ["/run/init.sh"]