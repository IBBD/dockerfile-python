#!/bin/bash 

sudo docker run -ti --rm \
    -v "$PWD"/test.py:/var/www/test.py \
    ibbd/python2-scrapy-v8 \
    /bin/bash 
