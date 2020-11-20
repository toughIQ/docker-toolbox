FROM toughiq/toolbox:debian
MAINTAINER toughiq <toughIQ@gmail.com>

RUN apt-get update \
 && apt-get install -y sudo \
 && apt-get clean all && rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '' --shell /bin/bash tooly
RUN adduser tooly sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
    
USER 1000 

WORKDIR /bin
CMD ["sleep","infinity"]

