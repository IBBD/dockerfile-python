#
# Python2 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python2
#
# sudo docker build -t ibbd/python2 ./
#

# Pull base image.
FROM python:2.7-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 使用阿里云的镜像
ADD sources.list /etc/apt/sources.list

# install 
# ipython: http://ipython.org/install.html
RUN \
    mkdir -p /var/www \
    && devPypiSource='-i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com' \
    && pip install $devPypiSource ipython

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"


