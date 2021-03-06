#
# Python2 Scrapy Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python2/scrapy
#
# sudo docker build -t ibbd/python2-scrapy ./
#

# Pull base image.
FROM ibbd/python2

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# install scrapy
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7 \
    && echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | tee /etc/apt/sources.list.d/scrapy.list \
    && apt-get update \
    && apt-get install -y curl scrapy

# 安装插件
# 插件需要先安装相应的环境工具
# pypi太慢，故使用了阿里云的源（测试比豆瓣的源稳定）
# pip安装时出现：error: command 'gcc' failed with exit status 1。是因为没有安装libxml2-dev和libxlst1-dev
RUN set -x \
    && buildDeps=' \
        gcc \
        libbz2-dev \
        libc6-dev \
        libncurses-dev \
        libreadline-dev \
        libsqlite3-dev \
        libssl-dev \
        make \
        xz-utils \
        zlib1g-dev \
        python-dev \
        libxml2 libxml2-dev \
        libxslt1.1 libxslt1-dev \
        ca-certificates \
        libffi-dev \
        ' \
    && set -x \
    && apt-get install -y --no-install-recommends $buildDeps \
        python-libxml2 \
        python-libxslt1 \
    && devPypiSource=' -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com' \
    && pip install $devPypiSource scrapy-redis \
    && pip install $devPypiSource torndb \
    && pip install $devPypiSource pymongo \
    && apt-get purge -y --auto-remove $buildDeps \
    && find /usr/local \
        \( -type d -a -name test -o -name tests \) \
        -o \( -type f -a -name '*.pyc' -o -name '*.pyo' \) \
        -exec rm -rf '{}' + \
    && rm -rf /var/lib/apt/lists/*


