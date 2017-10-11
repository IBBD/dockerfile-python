#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
#FROM python:3.6-slim
FROM debian:stretch-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# install python3, pip3
# 默认安装的时py3.5
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        gcc \
        python3 \
        python3-pip \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* \
    && pip3 install -U \
        pip \
        wheel

# Define working directory.
# 代码目录
WORKDIR /var/www

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
