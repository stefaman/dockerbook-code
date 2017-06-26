#!/bin/bash

#因为卷是容器间共享的,可以创建一个容器实现备份
sudo docker run --rm \
    -v $PWD:/backup \
    --volumes-from jekyll \
    ubuntu:16.04 \
    tar cvf /backup/james_blog_backup.tar /var/www/html