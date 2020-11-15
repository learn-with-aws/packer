#!/bin/bash

##################################################
##########   Packer Installation #################
##################################################

sudo yum update -y

sudo yum install wget zip unzip -y

sudo mkdir -p /opt/packer

cd /opt/packer

sudo curl -O https://releases.hashicorp.com/packer/1.6.0/packer_1.6.0_linux_amd64.zip

sudo unzip packer_1.6.0_linux_amd64.zip

sudo echo "export PATH=/opt/packer/:$PATH" >> ~/.bash_profile

sudo source ~/.bash_profile

##################################################
##########   AWS CLI Installation ################
##################################################

#!/bin/bash

sudo yum install python -y

cd /tmp

sudo curl -O https://bootstrap.pypa.io/get-pip.py

sudo python get-pip.py

sudo yum install awscli -y
