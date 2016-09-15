# son-install

'son-install' provides a simple way to deploy, manage, upgrade and destroy the Sonata Service Plataform (SP) for specialized environments like Development, Integration, Qualification and Demonstration.

'son-install' is built of a set of Ansible playbooks to automate the deployment of infrastructure and applications. So, all that you need is a 'bash' shell with Ansible.
 
Actually 'son-install' v1.0 has a main playbook ('son-cmud.yml') invoked with external parameters to control the life-cycle of all the SP Services.


## son-install parameters

* target
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
* "gtk-pkg"
* "gtk-srv"
* "gtk-api"
* "gtk-bss"
* "gtk-gui"
* "gtk-fnct"
* "gtk-rec"
* "gtk-vim"
* "gtk-all" (default)

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


### Contributing

To contribute to the development of the SONATA gui you have to fork the repository, commit new code and create pull requests. 


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

  $ cd son-install/v02

  $ ansible-playbook son-cmud.yml -e "target='HOST' operation='OPS' service='ALL|SVC_ID'"

### Install

// INSTALL full SP 

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=install service=all"

// INSTALL an individual SP Service

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=install service='SVC_ID'"

### Manage

// MANAGE functions (apply to all SP)

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=manage service=all action=[status|start|stop|restart]" 

// MANAGE functions (apply to an individual Service)

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=manage service='SVC_ID'" action=[status|start|stop|restart]"


### Upgrade

// UPGRADE all SP (not implemented yet; in the roadmap for next version)

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=upgrade service=all"

// UPGRADE an individual Service

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=upgrade service='SVC_ID'"

### Destroy

// DESTROY functions (in the roadmap for next version)

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=destroy service=all"

// MANAGE functions (apply to an individual Service)

  $ ansible-playbook son-cmud.yml -e "target=localhost operation=destroy service='SVC_ID'"


## License

'son-install'  is published under Apache 2.0 license. Please see the LICENSE file for more details. 


## Lead Developers

The following lead developers are responsible for this repository and have admin rights. They can, for example, merge pull requests. 

* Alberto Rocha (arocha7)
* Navdeep Unyial (navdeepuniyal)
* Felipe Vincens (felipevicens)
* Michael Bredel (mbredel)
