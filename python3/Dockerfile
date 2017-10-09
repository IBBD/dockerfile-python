#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
FROM python:3.6-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# install pip3
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update -y \
    && apt-get install -y python3-pip \
    && pip3 install -U pip \
    && apt-get autoremove \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

# Define working directory.
# 代码目录
WORKDIR /var/www

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
