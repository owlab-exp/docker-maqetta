FROM frolvlad/alpine-oraclejdk8:slim
MAINTAINER Hun Jae Lee <hunjae.lee@gmail.com>

ENV MAQETTA_VERSION 10.0.2
RUN apk update && apk add --no-cache --update ca-certificates openssl bash && update-ca-certificates \
    && wget -P /tmp https://github.com/maqetta/maqetta/releases/download/Release$MAQETTA_VERSION/maqetta-release-$MAQETTA_VERSION.zip \
    && unzip /tmp/maqetta-release-$MAQETTA_VERSION.zip \
    && rm /tmp/maqetta-release-$MAQETTA_VERSION.zip \
    && echo maqetta.baseDirectory=/maqetta/users >> /maqetta/maqetta.conf \
    && mkdir /maqetta/users

VOLUME /maqetta/users
EXPOSE 50000

ENTRYPOINT ["/maqetta/maqetta.server.sh"]
