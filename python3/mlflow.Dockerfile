#
# python3 Dockerfile
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
FROM python:3.6-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

RUN pip install mlflow

# 代码目录
WORKDIR /var/www

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm
ENV PYTHONIOENCODING utf-8

# 解决时区问题
ENV TZ "Asia/Shanghai"
