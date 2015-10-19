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
    && rm -rf /var/lib/apt/lists/*

# 安装V8
RUN \
    cd /root/ \
    && svn checkout http://v8.googlecode.com/svn/trunk/ v8 \
    && cd v8 \
    && sed -i 's/svn checkout --force/svn checkout --non-interactive --trust-server-cert --force/g' Makefile \
    && make builddeps \
    && make native console=readline \
    && mv out/native/d8 /usr/local/bin/d8 \
    && ln -s /usr/local/bin/d8 /usr/local/bin/v8 \
    && cd /root \
    && rm -rf v8 

# install pyv8 
RUN \
    pip install pyv8 

