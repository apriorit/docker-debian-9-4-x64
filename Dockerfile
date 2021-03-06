# This docker file contains build environment
FROM debian:latest
MAINTAINER krytin <krytin.vitaly@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

#uncomment all src repositories
RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y libssl-dev libcrypto++-dev uuid-dev libsnappy-dev build-essential cmake \
libguestfs-dev libedit-dev libc6-dev-x32 libelf-dev \
snapd git autoconf linux-headers-4.9.0-6-all

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*
#*******************************************
