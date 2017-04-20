#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/spacy
#
# sudo docker build -t ibbd/spacy ./
#

# Pull base image.
FROM python:3.6-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 使用阿里云的镜像
#ADD sources.list /etc/apt/sources.list

# install 
# ipython: http://ipython.org/install.html
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        python-dev \
        git \
    && pip install -U \
        spacy \
        ipython \
        jieba \
    && apt-get purge -y --auto-remove $buildDeps \
    && find /usr/local \
        \( -type d -a -name test -o -name tests \) \
        -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
        -exec rm -rf '{}' + \
    && rm -rf /var/lib/apt/lists/*

# 代码目录
RUN mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"
