FROM alpine:latest

MAINTAINER toughiq <toughIQ@gmail.com>

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories && \
    apk add --update bash vim curl mysql-client ldns-tools jwhois 


WORKDIR /bin
CMD ["bash"]

