FROM gliderlabs/alpine:latest

RUN echo http://mirror.yandex.ru/mirrors/alpine/v3.9/main > /etc/apk/repositories && \
    echo http://mirror.yandex.ru/mirrors/alpine/v3.9/community >> /etc/apk/repositories && \
    apk update && \
    apk add socat && \
    rm -f /var/cache/apk/APKINDEX*

ADD run.sh /run.sh

CMD ["/run.sh"]
