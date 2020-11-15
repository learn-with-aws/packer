#!/bin/bash

sudo yum install -y nginx

# Create directory for backup logs storage
sudo mkdir -p /opt/nginx-logs-backup

# take a BackUp of Configuration file
sudo mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak

# Push our own conf file
sudo cp -pr /opt/terraform/nginx/nginx_conf/nginx.conf /etc/nginx/nginx.conf
