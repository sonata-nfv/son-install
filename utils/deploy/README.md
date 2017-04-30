Here you have a list of standalone applications ready to deploy.

== Deploy a VM to an Openstack VIM ==
If you don't have yet a guest machine, then use the 'vm.yml' playbook to create one like:

* ansible-playbook utils/deploy/vm.yml -e 'pop=alabs|ncsrd proj=qual|demo distro=trusty|xenial|Core nbofvms=N'"

For example, to deploy two Ubuntu 16.04 VMs on Alabs' PoP at Demo Tenant:

* ansible-playbook utils/deploy/vm.yml -e 'pop=alabs proj=demo distro=xenial nbofvms=2'


== Deploy an application to a target machine == 

* 1st connect to the host or guest machine console using SSH. 
* 2nd install [ http://docs.ansible.com/ansible/intro_installation.html, Ansible ] 
* 3rd upgrade the Operating System packages and install libraries and tools
* 4rd run 'XXX.yml' playbook to deploy the XXX application

* ansible-playbook utils/deploy/XXX.yml -e 'target=localhost'
