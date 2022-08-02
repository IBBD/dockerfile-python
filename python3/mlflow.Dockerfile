#
# 深度学习可视化相关工具
#
# https://github.com/ibbd/dockerfile-python/python3
#

# Pull base image.
FROM python:3.9-slim

# 可视化
# 网络结构可视化：https://github.com/lutzroeder/netron
RUN pip install mlflow visdom tensorboard tensorboardX netron

# 根目录
WORKDIR /mlflow

# 终端设置
# 默认值是dumb，这时在终端操作时可能会出现：terminal is not fully functional
ENV TERM xterm
ENV PYTHONIOENCODING utf-8

# 解决时区问题
ENV TZ "Asia/Shanghai"
