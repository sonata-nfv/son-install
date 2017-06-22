# son-install

'son-install' provides a simple way to Create, Manage, Upgrade and Destroy (CMUD) SONATA resources for the Service Plataform (SP) as a standalone machine 

'son-install' is built on a set of Ansible playbooks that aims to:
* automate the deployment of the SONATA SP
* manage the SP services and applications lifecycle
* zero downtime roll up upgrades

All you need is a 'bash' shell with Ansible installed to run 'son-cmud.yml', ie, all the SONATA CMUD operations can be executed in a single line command

[![asciicast](http://asciinema.org/a/32wmaiey5d54d5l6msdd7nu32.png)](http://asciinema.org/a/32wmaiey5d54d5l6msdd7nu32?autoplay=1)


## What's new in Release 2.1
* application versioning - you can now choose the deployment of the 'latest', '2.1' or 'dev' version


## What's new in Release 2.0

Deploy the platform from the scratch for a specific platment (eg, SP/CI/QI/DI)
* step 1: provision infrastrucutre
* step 2: standardize configurations
* step 3: install applications and services


##  Characteristics

* Multi-Stage: deploy the Integration, Qualification and Demonstration platments
* Multi-PoP: deploy to multiple sites (set the right credential variables)
* Multi-VIM: Openstack (AWS under evaluation, OSM under evaluation)
* Multi-Distro: Ubuntu 14.04, Ubuntu 16.04, CentOS 7
* Multi-Operations: Create, Manage, Upgrade, Destroy


## Requirements

* Ansible 2.3.0+
* Shade 1.16.0+

NOTE: actually, 'son-install' assumes 'ubuntu' or 'centos' default username to run the playbooks and key based authentication - in the near future, this limitation will be removed, by using a generic 'sonata' user.


## Usage

The structure of 'son-install' is flexible enough to:
* deploy and manage a single service or application to an existing machine - designated by 'method 1'
* deploy, manage, upgrade, destroy a complex distributed platform - designated by 'method 2'


### Method 1 - deploying to an existing machine

A quick way to deploy SONATA 5G NFV SP to the local machine is:

* git clone https://github.com/sonata-nfv/son-install.git
* cd son-install
* ansible-playbook utils/deploy/sp.yml -e target='localhost'


Similar to 'sp.yml', actualy, the following services and applications are available for deployment to the localhost or to a target machine (with authorized keys):
* apache.yml
* haproxy.yml
* keycloak.yml
* letsencrypt.yml
* nginx.yml
* openstackclients.yml
* ovs.yml
* snort.yml
* squid.yml
* docker.yml
* jenkins.yml
* kubernetes.yml
* mysql.yml
* odoo.yml
* otrs5.yml
* pgsql.yml
* terraform.yml


### Method 2 - provisioning infrastructure and deploying software

A complete way to deploy and manage SONATA 5G NFV services and application from the scratch, ie, provisioning first the infrastructure resources and then deploying the software

* git clone https://github.com/sonata-nfv/son-install.git
* cd son-install
* ansible-playbook son-cmud.yml -e "ops=[CREATE/MANAGE/UPGRADE/DESTROY] plat=[SP] pop=[NCSRD|ALABS] distro=[trusty|xenial|Core] ver=[latest|dev|2.1]"

NOTE: depending on the performance of your infrastructure deployment and the download time to get package updates, this run could spent from 30 to 60 minutes.


#### Pre-configuration

1. Create the hidden file that contains the available Openstack clouds you can connect [os_client_config](http://docs.openstack.org/developer/os-client-config/)
* ~/.config/openstack/clouds.yaml

2. Select the platment you want to deploy in 'ansible.cfg' (default: "inventory = group_vars/'PLAT'"):<br>
* inventory = "inventory/'PLAT'

3. To avoid setting password credentials, use the private key pair (eg, "~/.ssh/YOUR-KEY.pem") of the public key you have used to create the VM


#### Example to CREATE a new SONATA Service Platform from the scratch

To deploy the latest SP version running on top of CentOS 7, to the Demo tenant on Altice Labs Openstack VIM: 
* ansible-playbook son-cmud.yml -e 'ops=create plat=sp pop=alabs proj=demo distro=Core ver=latest'


### Example to MANAGE the life-cycle of a platform

To stop ALL the services at the SP platform
* ansible-playbook son-cmud.yml -e 'ops=manage plat=sp pop=alabs proj=demo distro=xenial action=stop svc=all'

To ask for the status of all the SP services
* ansible-playbook son-cmud.yml -e 'ops=manage plat=sp pop=alabs proj=demo distro=xenial action=status svc=all'


### Example to UPGRADE a platform (to be enhanced on future release)

To upgrade the SP (this implementation is on the roadmap)
* ansible-playbook son-cmud.yml -e 'ops=upgrade plat=sp pop=alabs proj=demo sp_ver=2.1'


### Example to DESTROY a platform

To terminate a SP platform
* ansible-playbook son-cmud.yml -e 'ops=destroy plat=sp pop=alabs proj=demo'


### Dependencies

To deploy infrastrucutre resources to an Openstack VIM, the [Openstack command line clients](http://docs.openstack.org/user-guide/common/cli-install-openstack-command-line-clients.html) must be locally installed (already included in the 'son-cmud.yml' playbook)


## Lead Developers

The following developers are responsible for this repository and have admin rights.

* Alberto Rocha (arocha7)
* Felipe Vicens (felipevicens)
* Navdeep Uniyal (Navdeepuniyal)

## Contributing

To contribute to the development of the SONATA gui you have to fork the repository, commit new code and create pull requests.


## License

'son-install' is published under Apache 2.0 license. Please see the LICENSE file for more details.
