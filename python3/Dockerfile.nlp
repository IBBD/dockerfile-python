#
# python3 nlp Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
FROM ibbd/python3
#FROM registry.cn-hangzhou.aliyuncs.com/ibbd/python3

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# pip install 
# 很多依赖于setuptools
# 这里只安装一些常用的包
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        python3-setuptools \
    && pip3 install ipython \
        setuptools \
        wheel \
        numpy \
        pandas \
        scipy \
        jieba \
        nltk \
    && apt-get remove -y \
        build-essential \
    && apt-get autoremove -y \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
