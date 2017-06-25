FROM ruby
MAINTAINER stefaman "stefaman@qq.com"
ENV REFRESHED_AT 2017-06-25

RUN apt-get update && apt-get -qq install build-essential  redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD [ "/opt/webapp/bin/webapp" ]
