#
# python3 em Dockerfile
#

# Pull base image.
FROM python:3.6-stretch

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装基础库
# fasttext依赖于cython
RUN pip install -U pip setuptools \
    && pip --no-cache-dir install cython \
    && pip --no-cache-dir install \
        numpy \
        pandas \
        scipy \
        scikit-learn \
    && pip install git+https://github.com/facebookresearch/fastText.git

# 安装auto-sklearn
# auto-sklearn依赖于swig
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        swig \
    && curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt | xargs -n 1 -L 1 pip install \
    && pip install auto-sklearn \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/* 

# 安装server相关服务包
# celery4.2.1暂时只支持redis2.10的版本，升级到3会报错
RUN pip --no-cache-dir install \
    redis \
    pyarrow \
    fastparquet \
    jsonschema \
    PyMySQL \
    mysqlclient \
    celery[redis,msgpack] \
    flower

# 安装server服务常用包
RUN pip --no-cache-dir install \
    flask \
    flask_restful \
    flask_script \
    flask_migrate \
    flask_sqlalchemy \
    Flask-Celery-Helper \
    fire \
    requests \
    pyjwt \
    passlib \
    chardet \
    xlrd

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
