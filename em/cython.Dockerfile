#
# 编译镜像
# python3 cython Dockerfile
#

# Pull base image.
FROM registry.cn-hangzhou.aliyuncs.com/ibbd/python3:em

# 安装server相关服务包
RUN pip --no-cache-dir install \
    cython \
    ipython
