FROM ubuntu:16.04
MAINTAINER stefaman "stefaman@qq.com"
ENV REFRESHED_AT 2017-06-25

RUN apt-get -qq update && apt-get install -qq redis-server redis-tools
EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server" ]
CMD []
