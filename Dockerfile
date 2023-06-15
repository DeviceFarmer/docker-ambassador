FROM alpine:3.18.2

RUN apk update && \
    apk add socat && \
    rm -f /var/cache/apk/APKINDEX*

ADD run.sh /run.sh

CMD ["/run.sh"]
