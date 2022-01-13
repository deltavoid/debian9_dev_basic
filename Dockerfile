FROM debian:10.10


# ADD sources.list /etc/apt/sources.list


RUN apt-get update && apt-get install -y \
    git \
    vim \
    ssh \
    wget \
    curl

RUN git config --global user.name zhangqianyu.sys &&   git config --global user.email "zhangqianyu.sys@bytedance.com"

RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

ADD authorized_keys /root/.ssh/authorized_keys

