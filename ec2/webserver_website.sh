#!/bin/bash

# Update Amazon Linux
sudo yum update -y

# Install Apache server
sudo yum install httpd -y

# Start Apache server
sudo systemctl start httpd

# Install Git
sudo yum install git -y

# get home 
cd /home/ec2-user

# Clone the GitHub repository
git clone https://github.com/abirhasn07/T-House.git


# Move repository files to /var/www/html directory
sudo mv /home/ec2-user/T-House/*  /var/www/html/
