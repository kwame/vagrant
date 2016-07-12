#!/bin/bash

# Updating and install CentOS packages

# Update 
yum -y update --exclude=kernel

# Tools
yum -y install git unzip screen httpd httpd-devel httpd-tools nc telnet

