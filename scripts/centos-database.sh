#!/bin/bash

# Updating and install CentOS packages

# Update 
yum -y update --exclude=kernel

# Tools
yum -y install git unzip screen httpd httpd-devel httpd-tools

# MySQL
yum -y install mysql mysql-server mysql-devel
chkconfig --level 345 mysqld on
/etc/init.d/mysqld start

mysql -u root -e "show databases";

