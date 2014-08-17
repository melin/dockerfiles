dockerfiles
===========
# redis #
   	docker build -t centos:centos6-redis .
	docker run --name redis_server -d -p 3021:22 -p 7001:6379 centos:centos6-redis

# nginx #
	docker build -t centos:centos6-nginx .
	docker run --name nginx_server -d -p 3022:22 -p 8000:80 centos:centos6-nginx
   
# php5 #
	docker build -t centos:centos6-php .
	docker run --name nginx_server -d -p 3022:22 -p 8000:80 centos:centos6-php

