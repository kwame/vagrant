#!/bin/bash

# Updating and install CentOS packages

# Update 
yum -y update --exclude=kernel
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm
yum -y install puppetserver
sudo systemctl start puppetserver.service
