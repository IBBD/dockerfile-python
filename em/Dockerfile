#
# python3 em Dockerfile
#

# Pull base image.
FROM python:3.6-stretch

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装基础库
# fasttext依赖于cython
# 安装auto-sklearn
# auto-sklearn依赖于swig
# auto-sklearn的依赖包:
# setuptools
# nose
# Cython
# numpy>=1.9.0,<=1.14.5
# scipy>=0.14.1
# scikit-learn>=0.19,<0.20
# xgboost>=0.80
# lockfile
# joblib
# psutil
# pyyaml
# liac-arff
# pandas
# ConfigSpace>=0.4.0,<0.5
# pynisher>=0.4.2
# pyrfr>=0.7,<0.8
# smac==0.8
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends \
        swig \
    && curl https://raw.githubusercontent.com/automl/auto-sklearn/master/requirements.txt | xargs -n 1 -L 1 pip install \
    && pip install auto-sklearn \
    && pip install git+https://github.com/facebookresearch/fastText.git \
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
