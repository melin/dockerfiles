dockerfiles
===========
# base #
   	docker build -t melin/centos6:base .
	docker run --name base_server -d -p 3021:22 melin/centos6:base

# redis #
   	docker build -t melin/centos6:redis .
	docker run --name redis_server -d -p 3021:22 -p 6379:6379 melin/centos6:redis

# nginx #
	docker build -t melin/centos6:nginx .
	docker run --name nginx_server -d -p 3022:22 -p 80:80 melin/centos6:nginx
   
# php5 #
	docker build -t melin/centos6:php .
	docker run --name php_server -d -p 3022:22 -p 80:80 melin/centos6:php

# mariadb #
	docker build -t melin/centos6:mariadb .
	docker run --name mariadb_server -d -p 3022:22 -p 80:80 melin/centos6:mariadb
