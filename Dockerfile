FROM debian:latest

MAINTAINER toughiq <toughIQ@gmail.com>

RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends ngrep openssl openssh-client ca-certificates curl wget mariadb-client \
    host net-tools python postgresql-client netcat traceroute telnet vim apache2-utils siege stress stress-ng git-core jq \
    memtester atop htop \
    && apt-get clean all && rm -rf /var/lib/apt/lists/*

WORKDIR /bin
CMD ["sleep","infinity"]

