#!/bin/bash

sudo yum install git -y

sudo git clone https://github.com/learn-with-aws/packer.git /opt/packer

cd /opt/packer/nginx

# Provide execute permission for scripts
sudo chmod -R 755 /opt/packer/nginx/scripts

# Install pre requisites
sudo sh /opt/packer/nginx/scripts/pre-requirements.sh

# Install Nginx
sudo sh /opt/packer/nginx/scripts/nginx_install.sh

# Copy the backUp script to Nginx default Path
sudo cp -pr /opt/packer/nginx/scripts/backup_logs.sh /etc/nginx/backup_logs.sh

# SetUp the CronJob for regular backup
sudo echo "30 3 * * 0 sh /etc/nginx/backup_logs.sh" >> /var/spool/cron/root