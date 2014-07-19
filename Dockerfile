FROM stackbrew/ubuntu:12.04
MAINTAINER Jc Saad-Dupuy "jc.saaddupuy@fsfe.org"
RUN apt-get update -qq && apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-available/default

EXPOSE 80

CMD ["nginx"]

