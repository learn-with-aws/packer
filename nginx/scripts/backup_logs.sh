#!/bin/bash

# Move last 30 days logs to nginx backup folder
sudo find /var/log/nginx -type f -mtime +10 -print | xargs -I {} mv {} /opt/nginx-logs-backup