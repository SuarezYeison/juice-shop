# DOCKER-VERSION 0.3.4
FROM    centos:centos6
MAINTAINER  Bjoern Kimminich

RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN     yum install -y npm
RUN     npm install -g node-gyp
RUN     apt-get install build-essential

COPY . /juice-shop
RUN cd /juice-shop; npm install

WORKDIR /juice-shop

EXPOSE  3000
CMD ["npm", "start"]