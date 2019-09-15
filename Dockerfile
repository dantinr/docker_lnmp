FROM nginx
MAINTAINER Dante "dante@freeaihub.com"
COPY hello.docker.conf /etc/nginx/conf.d/
EXPOSE 80
