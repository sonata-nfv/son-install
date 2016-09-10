VM deployment using Ansible Cloud module 
=========

This playbook is generic enough to instanciate a simple VM in a multi-VIM, multi-placement, multi-environment and multi-distro fashion.

Requirements
------------

The following information must be obtained in advance:
* authentication credentials at a VIM
* available resources at the VIM, namely network segments, type of flavors, type of images

Playbook structure
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Playbook usage
----------------

This playbook creates a VM at an Openstack platform, running on PTIN Point-of-Presence, to be used in the Qualification environment"

$ ansible-playbook deploy-vm.yml -e "vim_type=openstack pop=ptin env=qualification distro=trusty vm_name=son-sp4qi01"

License
-------



Author Information
------------------

Contact info: arocha@ptinovacao.pt
