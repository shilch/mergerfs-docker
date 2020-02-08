FROM ubuntu:latest

RUN apt-get update && \
    apt-get install curl && \
    curl -s -O -L https://github.com/trapexit/mergerfs/releases/download/2.28.3/mergerfs_2.28.3.ubuntu-bionic_amd64.deb && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y ./mergerfs_2.28.3.ubuntu-bionic_amd64.deb && \
    rm mergerfs_2.28.3.ubuntu-bionic_amd64.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/*

ENTRYPOINT ["mergerfs"]