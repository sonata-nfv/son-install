#!/bin/bash
sudo apt-get update
sudo apt-get install htop -y
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible -y
sudo apt-get install git -y
