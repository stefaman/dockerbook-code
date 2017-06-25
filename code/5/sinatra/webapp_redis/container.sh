#!/bin/bash
sudo docker run -d --name webapp \
-v $PWD/webapp:/opt/webapp/ \
--net app \
-p 4567:4567 \
stef/webapp