# Pull base image.
FROM melin/centos6:nginx

MAINTAINER melin <libinsong1204@gmail.com>

# Install PHP
RUN rpm -Uvh http://mirror.webtatic.com/yum/el6/latest.rpm
RUN yum install php55w php55w-common php55w-gd php55w-mcrypt php55w-mysql php55w-pecl-memcache php55w-pecl-xdebug php55w-opcache php55w-fpm php55w-xml php55w-xmlrpc -y

# Expose ports.
EXPOSE 80

