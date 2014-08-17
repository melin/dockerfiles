#!/bin/bash
service sshd start

chown -R mysql:mysql /var/lib/mysql

mysql_install_db --user=mysql > /dev/null

/usr/sbin/mysqld --user mysql --bootstrap << SQL
    GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'  WITH GRANT OPTION;
    FLUSH PRIVILEGES;
SQL

/usr/bin/mysqld_safe --user mysql

mysqladmin -u root password '000000'
