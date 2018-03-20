FROM alpine:latest

WORKDIR /usr/bin

RUN wget -q -O vert https://github.com/Masterminds/vert/releases/download/v0.1.0/vert-v0.1.0-linux-amd64 && \
    wget -q -O yaml https://github.com/mikefarah/yaml/releases/download/1.13.1/yaml_linux_amd64

RUN chmod +x *
