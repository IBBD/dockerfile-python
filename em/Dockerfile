#
# python3 Dockerfile
#

# Pull base image.
FROM python:3.6-stretch

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# 安装基础库
RUN pip install -U pip setuptools \
    && pip --no-cache-dir install \
        numpy \
        pandas \
        scipy \
        scikit-learn

# 安装server相关服务包
RUN pip --no-cache-dir install \
    PyYaml \
    pyarrow \
    fastparquet \
    jsonschema \
    mysqlclient \
    celery[redis,msgpack]

# 安装server服务常用包
RUN pip --no-cache-dir install \
    flask \
    flask_restful \
    flask_script \
    flask_migrate \
    flask_sqlalchemy \
    Flask-Celery-Helper \
    fire

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm

# 解决时区问题
ENV TZ "Asia/Shanghai"
