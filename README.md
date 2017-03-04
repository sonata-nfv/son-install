# son-install

'son-install' provides a simple way to create, manage, upgrade and destroy (CMUD) the SONATA Service Plataform (SP) as a standalone environment but also the specialized Integration (CI), Qualification (QI) and Demonstration (DI) environments as well.

'son-install' is built of a set of Ansible playbooks to:
* automate the deployment (and termination) of infrastructure and applications. 
* manage the SP services and applications lifecycle
* zero downtime roll up upgrades

All you need is a 'bash' shell with Ansible installed: actually, 'son-cmud.yml' is the main playbook to invoke all the SONATA CMUD operations.


[![asciicast](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8.png)](https://asciinema.org/a/a1q347o8bvxafr84xpo4q59d8?autoplay=1)


## What's new

Deploy the platform from the scratch for a specific environment (eg, SP/CI/QI/DI)
* step 1: provision infrastrucutre
* step 2: standardize configurations
* step 3: install applications and services


##  Characteristics

* Multi-Stage: deploy the Integration, Qualification and Demonstration environments
* Multi-PoP: deploy to multiple sites (set the right credential variables)
* Multi-VIM: Openstack (AWS under evaluation, OSM under evaluation)
* Multi-Distro: Ubuntu 14.04, Ubuntu 16.04, CentOS 7
* Multi-Operations: Create, Manage, Upgrade, Destroy


## Usage

* git clone -b v2 https://github.com/sonata-nfv/son-install.git
* cd son-install
* ansible-playbook son-cmud.yml -e "ops=[CREATE/MANAGE/UPGRADE/DESTROY] environ=[SP/INTGR/QUAL/DEMO] pop=[NCSRD|ALABS] distro=[trusty|xenial|Core] action=[START/STOP/STATUS/TEST] svc=[ALL/GTK/MANO/IFTA]"

NOTE: if the infrastructure deployment is not quick enough, then a timeout will expire, stoping the playbook run. As a workaround, repeat the run - eg:
* ansible-playbook son-cmud.yml -e "ops=create environ=sp" --limit @/home/ubuntu/son-install/son-cmud.retry

NOTE2: depending on the performance of your infrastructure deployment and the download time to get package updates, this run could spent from 30 to 60 minutes. 

### Pre-configuration

Create the hidden file with credentials for Openstack tenant authentication
* ~/.config/openstack/vault_[POP]_[ENV].yaml

Create the hidden file with available Openstack clouds to connect [os_client_config](http://docs.openstack.org/developer/os-client-config/)
* ~/.config/openstack/clouds.yaml

Select the environment you want to deploy in 'ansible.cfg':<br>
* inventory = environments/'ENV'
or set the 'ENV' environmental variable - example:
* export ENV=SP


### Example to CREATE a new platform from the scratch

To deploy a new Service Platform (SP) to the Openstack VIM at Altice Labs on top of CentOS 7:
* ansible-playbook son-cmud.yml -e 'ops=create environ=sp pop=alabs distro=Core'

To create a new Demonstration Infrastructure (DI) on the NCSRD' Openstack running on top of Ubuntu 16.04: 
* ansible-playbook son-cmud.yml -e 'ops=create environ=di pop=ncsrd distro=xenial'


### Example to MANAGE the life-cycle of a platform

To stop ALL the services at the SP platform
* ansible-playbook son-cmud.yml -e 'ops=manage environ=sp pop=ncsrd distro=xenial action=stop svc=all'

To ask for the status of all the SP services
* ansible-playbook son-cmud.yml -e 'ops=manage environ=sp pop=ncsrd distro=xenial action=status svc=all'


### Example to UPGRADE a platform (to be enhanced on future release)

To upgrade a Qualification Infrastructure (QI) - this implementation is on the roadmap
* ansible-playbook son-cmud.yml -e 'ops=upgrade environ=qi pop=alabs'

To upgrade the Continuous Integration Infrastructure (CI)
* ansible-playbook son-cmud.yml -e 'ops=upgrade environ=ci pop=ncsrd'


### Example to DESTROY a platform

To terminate a SP platform
* ansible-playbook on-cmud.yml -e 'ops=destroy environ=sp pop=alabs'


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


