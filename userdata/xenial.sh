#!/bin/bash
apt-get update -y
apt-get install python -y
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible
apt-get update -y
apt-get install ansible -y
apt-get install git -y
apt-get install htop nmap tree sysstat -y

