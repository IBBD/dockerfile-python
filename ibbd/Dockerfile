#
# python2 ibbd Dockerfile
#

# Pull base image.
FROM python:2.7-stretch

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装相关环境
RUN apt-get update -y \
    && apt-get install -y build-essential

# 安装基础库
# Scrapy==0.24.0 \
RUN pip install -U pip setuptools \
    && pip --no-cache-dir install \
        Logbook==0.7.0 \
        MySQL-python==1.2.5 \
        PyYAML==3.11 \
        Twisted==14.0.2 \
        backports.ssl-match-hostname==3.4.0.2 \
        certifi==14.05.14 \
        cffi==0.8.6 \
        cryptography==0.6 \
        cssselect==0.9.1 \
        demjson==2.2.2 \
        lxml==3.4.0 \
        nose==1.3.4 \
        pyOpenSSL==0.14 \
        pycparser==2.10 \
        python-dateutil==2.2 \
        queuelib==1.2.2 \
        redis==2.10.3 \
        requests==2.4.3 \
        simplejson==3.6.5 \
        six==1.8.0 \
        tornado==4.0.2 \
        torndb==0.3 \
        umysql==2.61 \
        w3lib==1.10.0 \
        wsgiref==0.1.2 \
        xlrd==0.9.3 \
        zope.interface==4.1.1

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
