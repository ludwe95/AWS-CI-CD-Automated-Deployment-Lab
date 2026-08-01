#!/bin/bash
# Move newly deployed files to Nginx web root folder
sudo cp -r /opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive/* /var/www/html/
# Restart web server to serve latest content
sudo systemctl restart nginx
