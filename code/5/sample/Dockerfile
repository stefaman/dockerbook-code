FROM nginx
MAINTAINER stefaman "stefaman@qq.com"
ENV REFRESHED_AT 2017-06-25


RUN mkdir -p /var/www/html/website
ADD website/index.html /var/www/html/website
RUN rm -r /etc/nginx/conf.d/
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/

EXPOSE 80

# sudo docker run -d --name sample -p 80:80  -v $PWD/website:/var/www/html/website  sample nginx

