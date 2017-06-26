#!/bin/bash

sudo docker build -t 'stef/jekyll_server' ./apache
sudo docker build -t 'stef/jekyll' ./jekyll

sudo docker run -d --name jekyll \
    -v $PWD/james_blog:/data \
    stef/jekyll

sudo docker run -d --name jekyll_server \
    --volumes-from jekyll \
    -p 8080:80 \
    stef/jekyll_server

