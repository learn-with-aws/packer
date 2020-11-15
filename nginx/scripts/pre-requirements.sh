#! /bin/bash

# Update the packages
sudo yum update -y

# Install EPEL packages
sudo yum install epel-release -y

# Install some pre-requirement softwares
sudo yum install wget zip unzip java-1.8.0-openjdk-devel tree -y

# Grant Sudo permission for CentOS user
sudo echo "centos ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers

# Allow Root Login and Password Authentication on sshd_config file
sudo sed -i 's/#PermitRootLogin yes/PermitRootLogin yes/1' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/1' /etc/ssh/sshd_config

# Restart sshd configuration
sudo systemctl restart sshd
