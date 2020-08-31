FROM python:3.8

MAINTAINER Alex Cai "cyy0523xc@gmail.com"
ENV DEBIAN_FRONTEND noninteractive

# opencv依赖：libglib2.0-0, libsm6, libxext-dev
# 20200821 重新编译镜像，opencv 4.4报错
# ImportError: libGL.so.1: cannot open shared object file: No such file or directory
# ==> install libgl1-mesa-dev
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        libglib2.0-0 libsm6 libxrender1 libxext-dev \
        wget \
        curl \
        git \
        poppler-utils \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* 

# install python package
# python-Levenshtein依赖：python3-dev
# pdf2image依赖：poppler-utils
RUN pip3 --no-cache-dir install \
        numpy \
        scipy \
        pandas \
        pillow \
        imutils \
        requests \
        scikit-image \
        "opencv-python<4.4" \
        fastapi \
        uvicorn \
        python-multipart \
        PyPDF4 \
        pdf2image \
        fuzzywuzzy python-Levenshtein \
        diff-match-patch

# 安装自有模块
RUN pip3 --no-cache-dir install -r https://github.com/ibbd-dev/python-ibbd-algo/raw/master/requirements.txt \
    && pip3 --no-cache-dir install git+https://github.com/ibbd-dev/python-ibbd-algo.git \
    && pip3 --no-cache-dir install -r https://github.com/ibbd-dev/python-image-utils/raw/master/requirements.txt \
    && pip3 --no-cache-dir install git+https://github.com/ibbd-dev/python-image-utils.git

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：
# terminal is not fully functional
ENV LANG C.UTF-8
ENV TERM xterm
ENV PYTHONIOENCODING utf-8
# 解决时区问题
ENV TZ "Asia/Shanghai"
