son-install v2.0

Pre-configuration
-----------------

Create the hidden file with credentials for Openstack Tenant authentication
* ~/.config/openstack/vault.yaml

Create the hidden file with available Openstack clouds to connect [os_client_config](http://docs.openstack.org/developer/os-client-config/) 
* ~/.config/openstack/clouds.yaml

Clone the Repo
* git clone -b v2 https://github.com/sonata-nfv/son-install.git

Select the environment you want to deploy in 'ansible.cfg' - example:
 [defaults]
 inventory = ./environments/sp


Usage
-----
* cd son-install
* ansible-playbook son-cmud.yml -e 'ops=[CREATE/MANAGE/UPGRADE/DESTROY] environ=[QUAL/DEMO/SP] action=[START/STOP/STATUS/TEST] svc=[ALL/GTK/MANO/IFTA]'

Examples
========

To deploy a new platform from the scratch

* to create a new SONATA Service Platform (SP)
  ansible-playbook son-cmud.yml -e 'ops=create environ=sp'

* to create a new SONATA QUALIFICATION platform
  ansible-playbook son-cmud.yml -e 'ops=create environ=qual'


Life-cycle management of a platform

* to ask for the status of all the SP services
  ansible-playbook son-cmud.yml -e 'ops=manage environ=sp action=status svc=all'


To upgrade a platform (to be enhanced on future release)

* to upgrade a DEMO platform
  ansible-playbook son-cmud.yml -e 'ops=upgrade environ=demo'


To destroy a platform

* to remove a SP platform
  ansible-playbook son-cmud.yml -e 'ops=destroy environ=sp'


What's new

Deploy the platform from the scratch for a specific environment (eg, Qual/Demo)
* step 1: infrastrucutre provision
* step 2: standardize configuration
* step 3: applications and services installation


== Characteristics

* Multi-Stage: deploy the Qualification and Demonstration environments
* Multi-PoP: deploy to NCSRD and ALabs sites
* Multi-VIM: Openstack (AWS under evaluation, OSM under evaluation)
* Multi-Distro: Ubuntu 14.04, Ubuntu 16.04, CentOS 7
* Multi-Operations: Create, Manage, Upgrade, Test, Destroy


== Dependencies

To deploy infrastrucutre resources to an Openstack VIM, the [Openstack command line clients] (Openstack command line clients) must be locally installed (included in the playbook)


== Feedback
arocha@ptinovacao.pt
