#
# python2-scrapy-v8 Dockerfile
# 在python2-scrapy镜像的基础上增加v8解释引擎及pyv8 
#
# https://github.com/ibbd/dockerfile-python/scrapy/v8
#
# sudo docker build -t ibbd/python2-scrapy-v8 ./
#

# Pull base image.
FROM ibbd/python2-scrapy 

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装依赖
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
        subversion \
        build-essential \
        python-dev \
        libreadline-dev \
        libboost-all-dev \
        aptitude \
    && pip install -v pyv8 \
    && rm -rf /var/lib/apt/lists/*

