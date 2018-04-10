Here you have a list of standalone applications ready to deploy the VNF/NS (or the SP) to an existing VM or host.


Deploy the SP or VNF/NS to a target machine
===========================================

* 1st connect to the target machine via SSH
* 2nd install [ http://docs.ansible.com/ansible/intro_installation.html, Ansible ] 
* 3rd upgrade the Operating System packages and install libraries and tools
* 4rd run 'XXX.yml' playbook to deploy the XXX application, eg:

SP deployment to the localhost
* ansible-playbook utils/deploy/SP.yml [-e 'target=localhost']

vPSA deployment 
* ansible-playbook utils/deploy/vpsa.yml [-e 'target=localhost']


Deploy a Kubernetes cluster
===========================

* ansible-playbook utils/deploy/kubernetes.yml [-i inventory/hosts]


Create a single or multiple VMs on an Openstack VIM
===================================================
If you need to create a guest machine, then use the 'vm.yml' playbook for it. For example, to deploy two Ubuntu 16.04 VMs on Alabs' PoP at Demo tenant:

* ansible-playbook utils/deploy/vm.yml -e 'plat=vm pop=alabs proj=demo distro=xenial nbofvms=2'

