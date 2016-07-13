#!/bin/bash

# Updating and install CentOS packages

# Update system
yum -y update --exclude=kernel

# Installing puppetserver 
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum -y install puppetserver ntp

# Downloading puppetserver config file 
wget -q https://raw.githubusercontent.com/kwame/vagrant/master/files/puppetserver -O /etc/sysconfig/puppetserver

# Starting services
sudo systemctl start puppetserver.service
systemctl start ntpd.service
systemctl enable ntpd.service

