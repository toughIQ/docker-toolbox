FROM alpine:latest

MAINTAINER toughiq <toughIQ@gmail.com>

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community/" >> /etc/apk/repositories 
RUN apk add --update bash vim curl openssh openssl mysql-client ldns-tools jwhois 


WORKDIR /bin
CMD ["bash"]

