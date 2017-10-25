FROM debian:stretch-slim

MAINTAINER Alex Cai "cyy0523xc@gmail.com"

# Pick up some TF dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        python \
        python-dev \
        python-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install -U pip \
    && pip --no-cache-dir install \
        numpy \
        pandas \
        scipy \
        sklearn \
        matplotlib \
        tensorflow

# TensorBoard
EXPOSE 6006
