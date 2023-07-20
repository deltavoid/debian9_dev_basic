FROM debian:9.13


ADD sources.list /etc/apt/sources.list


RUN apt-get update && apt-get install -y \
    apt-utils \
    git \
    nano \
    vim \
    ssh \
    wget \
    curl

RUN git config --global user.name zqy &&   git config --global user.email "850074816@qq.com"

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

ADD authorized_keys /root/.ssh/authorized_keys

