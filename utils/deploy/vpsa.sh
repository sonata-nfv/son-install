#!/bin/bash
# DO NOT RUN IN PARALLEL (as backgroud processes), due to "Failed to lock APT for exclusive operation"
ansible-playbook son-cmud.yml -e "ops=create plat=nginx pop=ncsrd proj=dem distro=xenial" -v > nginx.log
ansible-playbook son-cmud.yml -e "ops=create plat=squid pop=ncsrd proj=dem distro=xenial" -v > squid.log
ansible-playbook son-cmud.yml -e "ops=create plat=snort pop=ncsrd proj=dem distro=xenial" -v > snort.log
#ansible-playbook son-cmud.yml -e "ops=create plat=vm pop=ncsrd proj=dem distro=xenial" -v > enduser.log
