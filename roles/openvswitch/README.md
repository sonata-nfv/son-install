Role Name
=========

Openvswitch deployment to Ubuntu 16.04 and CentOS 7 machines


Requirements
------------

* Xenial deployment makes use of repo packages (2.5.0)
* Centos 7 deployment makes use of 'tar.gz' tarball and builds the RPM (current LTS version: 2.5.2)


Role Variables
--------------

* to deploy to localhost: pass external variable "target=localhost"
* to deploy to a target machine: create a hosts file like this "target=ovs"

[ovs]
my-ovs ansible_user=centos ansible_ssh_private_key_file=~/.ssh/mykey.pem ansible_host=ipaddr ansible_ssh_common_args='-o StrictHostKeyChecking=no'


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Example of how to deploy to localhost:

$ cd son-install
$ ansible-playbook utils/deploy/ovs.yml -e "target=localhost"


License
-------

Apache 2.0

Author Information
------------------

Alberto Rocha, Altice Labs
arocha@ptinovacao.pt
