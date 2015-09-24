#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#
# sudo docker build -t ibbd/python3 ./
#

# Pull base image.
FROM python:3.5-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 使用阿里云的镜像
ADD sources.list /etc/apt/sources.list

# install 
# ipython: http://ipython.org/install.html
RUN \
    devPypiSource='-i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com' \
    && pip install $devPypiSource ipython

# 代码目录
RUN mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"


