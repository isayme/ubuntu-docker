FROM ubuntu:22.04

ADD sources.list /etc/apt/sources.list

RUN apt update && apt install -y wget curl vim net-tools iputils-ping && apt autoclean && rm -rf /var/cache/apt && rm -rf /var/lib/apt/lists/
