#!/bin/bash
# NGINX setup script for Azure Ubuntu VM

# Update and install
sudo apt update
sudo apt install nginx -y

# Start and enable service
sudo systemctl start nginx
sudo systemctl enable nginx

# Allow HTTP traffic through firewall (if UFW is enabled)
sudo ufw allow 'Nginx Full'
sudo ufw enable
