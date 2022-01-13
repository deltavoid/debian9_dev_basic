#!/bin/bash
set -xe

uname -a 

lsb_release

cat /etc/debian_version

ip a 

docker --version



# docker build -f Dockerfile.debian.10.10-ssh-key -t debian:10.10-ssh-key .
docker build  -t debian_ssh_key:latest .

docker image ls

