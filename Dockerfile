# This docker file contains build environment
FROM debian:latest
MAINTAINER Victor Yastrub <yastrub.victor@apriorit.com>

ENV DEBIAN_FRONTEND noninteractive

#uncomment all src repositories
RUN sed -i -- 's/#deb-src/deb-src/g' /etc/apt/sources.list && sed -i -- 's/# deb-src/deb-src/g' /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y \
&& apt-get install -y linux-headers-4.9.0-6-all linux-image-4.9.0-6-amd64

RUN rm -rf /var/lib/apt/lists/* /var/cache/apt/*
#*******************************************
