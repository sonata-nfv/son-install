# VM deployment using Ansible Cloud module 

This playbook is generic enough to instanciate a simple VM in a multi-VIM, multi-placement, multi-environment and multi-distro fashion.

## Requirements
---------------

The following information must be obtained in advance:
* authentication credentials at a VIM
* available resources at the VIM, namely network segments, type of flavors, type of images

## Playbook usage
-----------------

This playbook creates a VM at an Openstack platform, running on PTIN Point-of-Presence, to be used in the Qualification environment"

  $ ansible-playbook deploy-vm.yml -e "vim_type=openstack pop=ptin env=qualification distro=trusty vm_name=sonata-sp"

## License
----------

SONATA gui is published under Apache 2.0 license. Please see the LICENSE file for more details

Author Information
------------------

Contact info: arocha@ptinovacao.pt
