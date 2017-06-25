#! /bin/bash

sudo docker run -d --name redis \
--net app \
stef/redis