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
# install pyv8 
RUN \
    apt-get update \
    && apt-get install -y --no-install-recommends scons \
        libboost-all-dev \
    && cd /root/ \
    && svn checkout http://v8.googlecode.com/svn/trunk/ v8 \
    && svn checkout http://pyv8.googlecode.com/svn/trunk/ pyv8 \
    && cd v8 \
    && export V8_HOME=`/root/v8` \
    && cd ../pyv8 \
    && python setup.py build \
    && python setup.py install

