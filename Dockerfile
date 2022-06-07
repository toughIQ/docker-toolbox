FROM fedora:latest

MAINTAINER toughiq <toughIQ@redhat.com>

RUN dnf update -y \
    && dnf install -y ngrep openssl openssh-clients ca-certificates curl wget mariadb \
    net-tools python postgresql netcat traceroute telnet vim httpd-tools siege stress stress-ng git-core jq \
    memtester atop htop
#    && apt-get clean all && rm -rf /var/lib/apt/lists/*

WORKDIR /bin
CMD ["sleep","infinity"]
