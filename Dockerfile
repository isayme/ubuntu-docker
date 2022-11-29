FROM ubuntu:22.04

ADD sources.list /etc/apt/sources.list

RUN apt update && \
  apt install --no-install-recommends -y wget curl vim net-tools iputils-ping && \
  apt autoremove && \
  apt autoclean && \
  rm -rf /var/cache/apt && \
  rm -rf /var/lib/apt/lists/
