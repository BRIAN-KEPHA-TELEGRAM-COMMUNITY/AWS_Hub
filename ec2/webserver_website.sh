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
git clone https://github.com/AngelofVerdant/ec2TestRepo.git


# Move repository files to /var/www/html directory
sudo mv /home/ec2-user/ec2TestRepo/*  /var/www/html/
