FROM alpine:3.14.1

RUN apk update && \
    apk add socat && \
    rm -f /var/cache/apk/APKINDEX*

ADD run.sh /run.sh

CMD ["/run.sh"]
