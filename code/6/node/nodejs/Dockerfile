FROM node
MAINTAINER James Turnbull <james@example.com>
ENV REFRESHED_AT 2016-06-01

# RUN apt-get -qq update
# RUN apt-get -qq install nodejs npm
# RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir -p /var/log/nodeapp

ADD nodeapp /opt/nodeapp/
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org

WORKDIR /opt/nodeapp
RUN cnpm install

VOLUME [ "/var/log/nodeapp" ]

EXPOSE 3000

ENTRYPOINT [ "node", "server.js" ]
