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
    pip install -U \
        spacy \
        ipython \
        jieba

# 代码目录
RUN mkdir -p /var/www

# Define working directory.
WORKDIR /var/www

# 解决时区问题
ENV TZ "Asia/Shanghai"
