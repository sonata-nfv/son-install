#!/bin/bash
sudo yum update
wget https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
sudo rpm -ihv epel-release-7-9.noarch.rpm
sudo yum update
sudo yum install ansible -y
sudo yum install git -y
sudo yum install htop nmap sysstat tree -y
# DEPLOY KUBERNETES CLUSTER
git clone https://github.com/sonata-nfv/son-install.git
cd son-install/utils/terraform
ansible-playbook deploy.yml -e "target=localhost env=k8s"
