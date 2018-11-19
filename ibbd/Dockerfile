#
# python2 ibbd Dockerfile
#

# Pull base image.
FROM python:2.7

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装相关环境
RUN apt-get update -y \
    && apt-get install -y \
        build-essential \
        gcc \
        g++ \
        libmysqlclient-dev \
        libffi-dev \
        libxml2-dev \
        libssl-dev \
        libxslt-dev

# 安装基础库
# Scrapy==0.24.0 \
RUN pip install -U pip setuptools \
    && pip --no-cache-dir install \
        python-binary-memcached \
        tornado \
        simplejson \
        torndb \
        redis

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
