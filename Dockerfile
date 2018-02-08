FROM alpine:latest

RUN apk --update add python git lftp && \
    rm -rf /var/cache/apk/*

COPY /webhooks.py /
COPY /docker-entry.sh  /

RUN chmod 755 /docker-entry.sh

CMD ["/docker-entry.sh"]
