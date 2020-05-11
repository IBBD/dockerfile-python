FROM python:3.7-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"
ENV DEBIAN_FRONTEND noninteractive

# opencv依赖：libglib2.0-0, libsm6, libxext-dev
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        libglib2.0-0 libsm6 libxrender1 libxext-dev \
        wget \
        curl \
        git \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* 

# install python package
RUN pip3 install \
        numpy \
        scipy \
        pillow \
        imutils \
        requests \
        scikit-image \
        opencv-python \
        fastapi \
        uvicorn \
        python-multipart \
        PyPDF4 \
        pdf2image

# 安装自有模块
RUN pip3 install -r https://github.com/ibbd-dev/python-ibbd-algo/raw/master/requirements.txt \
    && pip3 install git+https://github.com/ibbd-dev/python-ibbd-algo.git \
    && pip3 install -r https://github.com/ibbd-dev/python-image-utils/raw/master/requirements.txt \
    && pip3 install git+https://github.com/ibbd-dev/python-image-utils.git

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：
# terminal is not fully functional
ENV LANG C.UTF-8
ENV TERM xterm
ENV PYTHONIOENCODING utf-8
# 解决时区问题
ENV TZ "Asia/Shanghai"
