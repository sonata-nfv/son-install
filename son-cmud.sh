#!/bin/bash

#if [ ! -z $1 ] 
#then
echo "Usage: ansible-playbook son-cmud.yml <environ>"
ansible-playbook son-cmud.yml -e ops=$1
#exit 1
#fi
