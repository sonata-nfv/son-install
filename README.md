# son-install

'son-install' provides a simple way to deploy, manage, upgrade and destroy the Sonata Service Plataform (SP) for specialized environments like Development, Integration, Qualification and Demonstration.

'son-install' is built of a set of Ansible playbooks to automate the deployment of infrastructure and applications. So, all that you need is a 'bash' shell with Ansible.
 
Actually 'son-install' v1.1 has a main playbook ('son-cmud.yml') invoked with external parameters to control the life-cycle of all the SP Services.

[![asciicast](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8.png)](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8?autoplay=1)

## son-install parameters

* target
* env
* operation
* service
* action


### target

* localhost - to execute on the same machine
* alias - the referenced in the hosts file (Inventory) to the machine or group of machines


### operation

The available type of Operations are:
* "install" - contains the playbooks to deploy a SP from the scratch
* "manage"  - contains the playbooks to manage the global SP lyfe-cycle and its individual componentes
* "upgrade" - contains the playbooks to update the SP to a desired state
* "destroy" - contains the playbooks to uninstall a SP or any of its individual components


### service

The available type of Services are (SVC_ID):

GK:
* "gtkpkg"
* "gtksrv"
* "gtkapi"
* "gtkbss"
* "gtkgui"
* "gtkfnct"
* "gtkrec"
* "gtkvim"
* "gtkall" (default)

REPO:
* "catalog"

MANO:
* "slm"
* "ssm"
* "fsm"
* "plugin-mgr"
* "mano-all" (default)

IFTA:
* "ifta-vim"
* "ifta-wim"
* "ifta-all" (default)

MON:
* "mon-srv"
* "mon-mgr"
* "mon-pushgw"
* "mon-all" (default)

LOG:
* "log-srv"
* "log-elk"
* "log-graylog"
* "log-all" (default)

ALL:
* "all" (apply to all SP services)


## Instalation

1. Install Ansible 
Installation guide for multiple Linux platforms at: 

  http://docs.ansible.com/ansible/intro_installation.html 

2. Install GIT 
Installation guide for multiple Linux platforms at:

  https://git-scm.com/download/linux

3. Get the 'son-install' repo

  $ git clone https://github.com/sonata-nfv/son-install.git


## Usage

  $ cd son-install/

  $ ansible-playbook son-cmud.yml -e "target='HOST' env='ENV' operation='OPS' service='ALL|SVC_ID'"

### Install

// Example to INSTALL a full SP for Integration environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=intg operation=install service=all"

// Example to INSTALL an individual SP service to the Qualification environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=qual operation=install service='SVC_ID'"

### Manage

// Example to MANAGE the life-cycle of ALL services at the Integration environment 

  $ ansible-playbook son-cmud.yml -e "target=localhost env=intg operation=manage service=all action=[status|start|stop|restart]" 

// Example to MANAGE the life-cycle of an individual Service at the Demonstration environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=demo operation=manage service='SVC_ID'" action=[status|start|stop|restart]"


### Upgrade

// Example to UPGRADE all SP at the Qualification environment (not implemented yet; in the roadmap for next version)

  $ ansible-playbook son-cmud.yml -e "target=localhost env=qual operation=upgrade service=all"

// Example to UPGRADE an individual Service at the Demonstration environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=demo operation=upgrade service='SVC_ID'"


### Destroy

// Example to DESTROY all services in the SP at the Qualification environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=qual operation=destroy service=all"

// Example to DESTROY an individual service in the SP at the Demonstration environment

  $ ansible-playbook son-cmud.yml -e "target=localhost env=demo operation=destroy service='SVC_ID'"


### Terraform 

//  Change the 'variables.tf' file to meet your infrastructure parameters: depending on those variables, it deploys an INTEGRATION, QUALIFICATION or DEMONSTRATION environment to an Openstack VIM

  $ cd /son-install/terrafom/'ENVIRON'
  $ terraform plan  -var-file='ENVIRON'-'VIMTYPE'-'LOCATION'-'DISTRO'.tfvars
  $ terraform apply -var-file='ENVIRON'-'VIMTYPE'-'LOCATION'-'DISTRO'.tfvars


### Contributing

To contribute to the development of the SONATA gui you have to fork the repository, commit new code and create pull requests.


## License

'son-install'  is published under Apache 2.0 license. Please see the LICENSE file for more details. 


### Release Notes

New to version 1.1
* multi-environment deployment included: now its possible to differentiate between INTEGRATION, QUALIFICATION and DEMONSTRATION environments
* better control on start/stop containers
* alternative deployment using Terraform


## Lead Developers

The following lead developers are responsible for this repository and have admin rights. They can, for example, merge pull requests. 

* Alberto Rocha (arocha7)
* Navdeep Unyial (navdeepuniyal)
* Felipe Vincens (felipevicens)
* Michael Bredel (mbredel)
