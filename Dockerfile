FROM alpine

RUN apk update
RUN apk add binutils nasm

COPY bin/mynasm /usr/bin/mynasm
RUN chmod +x /usr/bin/mynasm

COPY ./.profile /root/.profile

VOLUME ["/code"]
WORKDIR /code
