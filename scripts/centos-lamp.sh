#!/bin/bash

# Updating and install CentOS packages

# Update 
yum -y update --exclude=kernel

# Tools
yum -y install git unzip screen httpd httpd-devel httpd-tools
chkconfig --level 345 httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

/etc/init.d.httpd start

# PHP
yum -y install php php-cli php-devel php-common

# MySQL
yum -y install mysql mysql-server mysql-devel
chkconfig --level 345 mysqld on
/etc/init.d/mysqld start

mysql -u root -e "show databases";

# Download starter content

/etc/init.d/httpd restart

# Download started content
cd /vagrant 
sudo -u vagrant wget -q https://raw.githubusercontent.com/kwame/vagrant/master/files/index.html

sudo -u vagrant wget -q https://raw.githubusercontent.com/kwame/vagrant/master/files/info.php
