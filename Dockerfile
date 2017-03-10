FROM alpine:3.5
MAINTAINER leafney "babycoolzx@126.com"

ENV MONGO_VERSION=3.2.10-r1

RUN apk add mongodb=${MONGO_VERSION} --update-cache --repository http://dl-4.alpinelinux.org/alpine/edge/testing --allow-untrusted && \
    mkdir -p /data/db && \
    mkdir -p /data/logs && \
    mkdir -p /data/config && \
    rm -rf /var/cache/apk/*

COPY ./mongod.conf /data/config/mongod.conf

COPY ./docker-entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
RUN chmod +x usr/local/bin/docker-entrypoint.sh

VOLUME ["/data"]
EXPOSE 27017

CMD ["docker-entrypoint.sh"]