#!/bin/bash

cd /opt/terraform/nginx/scripts

# Provide execute permission for scripts
sudo chmod -R 755 /opt/terraform/nginx/scripts

# Install pre requisites
sudo sh /opt/terraform/nginx/scripts/pre-requirements.sh

# Install Nginx
sudo sh /opt/terraform/nginx/scripts/nginx_install.sh

# Copy the backUp script to Nginx default Path
sudo cp -pr /opt/terraform/nginx/scripts/nginx_logs_backup.sh /etc/nginx/nginx_logs_backup.sh

# SetUp the CronJob for regular backup
sudo echo "30 3 * * 0 sh /etc/nginx/nginx_logs_backup.sh" >> /var/spool/cron/root