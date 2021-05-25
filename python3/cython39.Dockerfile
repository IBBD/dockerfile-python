#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
FROM python:3.9

LABEL user="Alex Cai"
LABEL email="cyy0523xc@gmail.com"
LABEL version="1.0"
LABEL description="cpython基础镜像"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        git \
        wget \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* 

# install cython
RUN pip --no-cache-dir install \
    cython 

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV LANG C.UTF-8
ENV TERM xterm
ENV PYTHONIOENCODING utf-8

# 解决时区问题
ENV TZ "Asia/Shanghai"
