FROM logstash
MAINTAINER stef
ENV REFRESHED_AT 2016-06-025


ADD logstash.conf /etc/logstash/

WORKDIR /opt/logstash

ENTRYPOINT [ "/usr/share/logstash/bin/logstash" ]
CMD [ "-f", "/etc/logstash/logstash.conf" ] # or "-f/etc/..", 而"-f /etc.."" 存在空格是错误
# redis 的日志输出格式