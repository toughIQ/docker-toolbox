FROM fedora:latest

MAINTAINER toughiq <toughIQ@redhat.com>

RUN dnf update -y \
    && dnf install -y ngrep openssl openssh-clients ca-certificates curl wget mariadb \
    net-tools python postgresql netcat traceroute telnet vim httpd-tools siege stress stress-ng git-core jq \
    memtester atop htop

RUN adduser --shell /bin/bash tooly

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER tooly

WORKDIR /bin
CMD ["sleep","infinity"]
