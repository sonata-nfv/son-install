# son-install

'son-install' provides a simple way to create, manage, upgrade and destroy (CMUD) the SONATA Service Plataform (SP) as a standalone environment but also the specialized Integration, Qualification and Demonstration environments as well.

'son-install' is built of a set of Ansible playbooks to:
* automate the deployment (and termination) of infrastructure and applications. 
* manage the SONATA services and applications lifecycle
* zero downtime roll up upgrades

All you need is a 'bash' shell with Ansible installed: actually, 'son-cmud.yml' is the main playbook to invoke all the SONATA CMUD operations.


[![asciicast](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8.png)](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8?autoplay=1)


## What's new

Deploy the platform from the scratch for a specific environment (eg, Qual/Demo)
* step 1: provision infrastrucutre
* step 2: standardize configurations
* step 3: install applications and services


##  Characteristics

* Multi-Stage: deploy the Qualification and Demonstration environments
* Multi-PoP: deploy to multiple sites (set the right credential variables)
* Multi-VIM: Openstack (AWS under evaluation, OSM under evaluation)
* Multi-Distro: Ubuntu 14.04, Ubuntu 16.04, CentOS 7
* Multi-Operations: Create, Manage, Upgrade, Destroy


## Usage

* git clone -b v2 https://github.com/sonata-nfv/son-install.git
* cd son-install
* ansible-playbook son-cmud.yml -e 'ops=[CREATE/MANAGE/UPGRADE/DESTROY] environ=[QUAL/DEMO/SP] action=[START/STOP/STATUS/TEST] svc=[ALL/GTK/MANO/IFTA]'

### Pre-configuration

Create the hidden file with credentials for Openstack Tenant authentication
* ~/.config/openstack/vault.yaml

Create the hidden file with available Openstack clouds to connect [os_client_config](http://docs.openstack.org/developer/os-client-config/)
* ~/.config/openstack/clouds.yaml

Select the environment you want to deploy in 'ansible.cfg':<br>
 inventory = environments/'ENV'

### Examples

To deploy a new platform from the scratch

* to create a new SONATA Service Platform (SP)
* ansible-playbook son-cmud.yml -e 'ops=create environ=sp'

* to create a new SONATA QUALIFICATION platform
* ansible-playbook son-cmud.yml -e 'ops=create environ=qual'


Life-cycle management of a platform

* to ask for the status of all the SP services
* ansible-playbook son-cmud.yml -e 'ops=manage environ=sp action=status svc=all'


To upgrade a platform (to be enhanced on future release)

* to upgrade a DEMO platform
* ansible-playbook son-cmud.yml -e 'ops=upgrade environ=demo'


To destroy a platform

* to remove a SP platform
* ansible-playbook on-cmud.yml -e 'ops=destroy environ=sp'


### Dependencies

To deploy infrastrucutre resources to an Openstack VIM, the [Openstack command line clients](http://docs.openstack.org/user-guide/common/cli-install-openstack-command-line-clients.html) must be locally installed (already included in the 'infra.yml' playbook)


## Lead Developers

The following developers are responsible for this repository and have admin rights. 

* Alberto Rocha (arocha7)
* Navdeep Unyial (navdeepuniyal)
* Felipe Vincens (felipevicens)
* Michael Bredel (mbredel)

## Contributing

To contribute to the development of the SONATA gui you have to fork the repository, commit new code and create pull requests.


## License

'son-install' is published under Apache 2.0 license. Please see the LICENSE file for more details.


