son-install v2.0

== Pre-configuration

Create the hidden file with credentials for Openstack Tenant authentication
* ~/.git/openstack/vault.yaml

Create the hidden file with available Openstack clouds to connect [os_client_config](http://docs.openstack.org/developer/os-client-config/) 
~/.config/openstack/clouds.yaml

Clone the Repo
* git clone https://github.com/sonata-nfv/son-install.git

== Usage
Just run it
* cd son-install
* ansible-playbook son-cmutd.yml -e "ops=CMUTD environ=QUAL/DEMO"


== What's new

Deploy the platform from the scratch for a specific environment (eg, Qual/Demo)
* step 1: infrastrucutre provision
* step 2: standardize configuration
* step 3: applications and services installation

== Characteristics

* Multi-Stage: deploy to Qualification and Demonstration environments
* Multi-PoP: deploy to NCSRD and ALabs sites
* Multi-VIM: Opensatck (AWS under implementation, OSM under evaluation)
* Multi-Distro: Ubuntu 14.04, Ubuntu 16.04, CentOS 7
* Multi-Operations: Create, Manage, Upgrade, Test, Destroy

== Dependencies

Create the hidden file with credentials for Openstack Tenant connection
* ~/.git/openstack/vault.yaml


== Feedback
arocha@ptinovacao.pt
