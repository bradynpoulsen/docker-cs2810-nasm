FROM ubuntu

RUN apt-get update
RUN apt-get install -y binutils nasm

COPY bin/mynasm /usr/bin/mynasm
RUN chmod +x /usr/bin/mynasm
COPY ./.bashrc /root/.bashrc

VOLUME ["/code"]
WORKDIR /code
