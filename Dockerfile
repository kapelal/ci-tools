FROM alpine:latest

RUN wget -q -O /usr/bin/vert https://github.com/Masterminds/vert/releases/download/v0.1.0/vert-v0.1.0-linux-amd64 && \
    wget -q -O /usr/bin/yaml https://github.com/mikefarah/yaml/releases/download/1.13.1/yaml_linux_amd64

COPY ./scripts /usr/bin/

RUN chmod +x /usr/bin/*

WORKDIR /root
