# son-install

'son-install' provides a simple way to deploy, manage, upgrade and destroy the Sonata 

Service Plataform (SP) for specialized environments like Development, Integration, 

Qualification and Demonstration.

'son-install' is built of a set of Ansible playbook to automate the deployment of 

infrastructure and applications. So, all that you need is a 'bash' sheel with Ansible. 

## Development

Actually 'son-install-v1.0' has the following code structure:

* v01 - simple deployment of Sonata SP

* v02 - deployment of Sonata SP with extended CMUD functions to Create, Manage, Upgrade 

and Destroy 


### Building 


#### Dependencies



### Contributing

To contribute to the development of the SONATA gui you have to fork the repository, 

commit new code and create pull requests.



## Instalation

1. install Ansible 
Installation guide for multiple Linux platforms at: 

http://docs.ansible.com/ansible/intro_installation.html 

2. install GIT 
Installation guide for multiple Linux platforms at: https://git-scm.com/download/linux

3. get the 'son-install' repo
$ git clone https://github.com/sonata-nfv/son-install.git


## Usage

$ cd son-install/v02
$ ansible-playbook son-cmud.yml -e "target=<HOST> operation=<OPS> service=<ALL|SVC>"

### Install

// INSTALL full SP 
$ ansible-playbook son-cmud.yml -e "target=localhost operation=install service=all"

// INSTALL an individual SP Service
$ ansible-playbook son-cmud.yml -e "target=localhost operation=install service=<SVC_ID>"

### Manage

// MANAGE functions (apply to all SP)
$ ansible-playbook son-cmud.yml -e "target=localhost operation=manage service=all 

action=[status|start|stop|restart]"

// MANAGE functions (apply to an individual Service)
$ ansible-playbook son-cmud.yml -e "target=localhost operation=manage service=<SVC_ID>" 

action=[status|start|stop|restart]"

### Upgrade (not implemented yet; in the roadmap for next version)

// UPGRADE all SP 
$ ansible-playbook son-cmud.yml -e "target=localhost operation=upgrade service=all"

// UPGRADE an individual Service
$ ansible-playbook son-cmud.yml -e "target=localhost operation=upgrade service=<SVC_ID>"

### Destroy

// DESTROY functions (in the roadmap for next version)
$ ansible-playbook son-cmud.yml -e "target=localhost operation=destroy service=all"

// MANAGE functions (apply to an individual Service)
$ ansible-playbook son-cmud.yml -e "target=localhost operation=destroy service=<SVC_ID>"


## License
SONATA gui is published under Apache 2.0 license. Please see the LICENSE file for more 

details.

## Lead Developers
The following lead developers are responsible for this repository and have admin rights. 

They can, for example, merge pull requests.

* Alberto Rocha (arocha7)
* Navdeep Unyial (navdeepuniyal)
* Felipe Vincens (felipevicens)
* Michael Bredel (mbredel)
