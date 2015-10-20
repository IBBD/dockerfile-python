#!/bin/bash 

sudo docker run -ti --rm \
    -v test.py:/test.py \
    ibbd/python2-scrapy-v8 \
    /bin/bash 
