Role Name
=========

A role to deploy Squid proxy server to a target CentOS 7, Ubuntu 14.04 and Ubunti 16.04 guest machines


Requirements
------------

No specific requirements.


Role Variables
--------------

To set a particular configuration that fits your needs, just change the 'roles/squid/files/squid.conf' configuration file - example: <br>

proxy service port:
* http_port 3128

local address space:
* acl localnet 10.112.0.0/16


Dependencies
------------

* Openstack command line clients
* Shade >=1.16.0


Example Playbook
----------------

Get teh repo
* git clone https://github.com/sonata-nfv/son-install.git
* cd son-install

To generate an Ubuntu 16.0 VM with Squid 3.5 on an Openstack VIM:
* ansible-playbook son-cmud.yml -e "ops=create plat=squid pop='YOUR_OS_VIM' proj='YOUR_OS_TENANT' distro='YOUR_PREFERED_OPERATING_SYSTEM_DISTRO'"


To install Squid onto the local machine:
* ansible-playbook utils/deploy/squid.yml -e target='IP-ADDRESS-OF-THE-GUEST-MACHINE'


License
-------

Apache 2.0


Author Information
------------------

Alberto Rocha, Altice Labs (alberto-m-rocha@alticelabs.pt)
