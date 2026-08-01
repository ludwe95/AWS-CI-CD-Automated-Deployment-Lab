#!/bin/bash
set -e

# Ensure Nginx web root exists
mkdir -p /var/www/html

# Restart Nginx after CodeDeploy places the files
systemctl restart nginx
systemctl status nginx --no-pager
