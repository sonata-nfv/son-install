virtual Cache Content (vCC)
===========================

This role instanciates a VM (running a Squid proxy server) based on a pre-loaded Openstack Glance qcow2 image. 

You can change the 'roles/vcc/files/squid.conf' to modify the authentication mode:
* transparent (default)
* local password (htpasswd), LDAP, AD, whatever

The steps of execution are:

1. Create 'networks' and 'subnets' for vCC connectivity with other VNU's, namely:

* end-user access
* vTC
* vTU
* FW 

2. Create 'security groups' for Squid

3. Create a (large) Volume for cache storage

4. Create a VM based on a Squid Glance image and mount the cache Volume

5. Change the default Squid configuration (if needed) - '/etc/squid/squid.conf'


Requirements
------------

* Ansible 2.3.0
* Shade 1.16.0 (automatic deployment during playbook execution)
* Openstack Command Line clients (idem)

NOTE: create a file named '/etc/openstack/cloud.yaml' (or '~/.config/openstack/cloud.yaml' if you don't have root access) with the right parameters to connect to Openstack - eg:

  os_alabs_demo:
    auth:
      auth_url: 'http://YOUR_OS_AUTH_URL:5000/v3'
      username: 'YOUR_OS_USERNAME'
      password: '*******'
      project_name: 'YOUR_OS_PROJECT_NAME'
      project_domain_name: 'default'
      user_domain_name: 'default'
    auth_type: 'password'
    identity_api_version: '3'
    region_name: 'RegionOne'


Role Variables
--------------

* 'var/mail.yml' will be loaded with the hostname and IP address assigned during instance creation.
* '/var/os_"POP"_"PROJ"_"DISTRO".yml' contains the parameters to create an instance to a PoP/Tenant/Distro.


Dependencies
------------

For different Squid image name, set the iappropriate Glance qcow2 image name in 'roles/vcc/vars/os_"POP"_"PROJ"' variables.


Example Playbook
----------------

* ansible-playbook son-cmud.yml -e "ops=create plat=vcc pop='POP' proj='PROJ' distro='DISTRO'"

where:
* POP = [your_openstack_vim_alias]
* PROJ = [your_tenant_name]
* DISTRO = ['xenial', 'trusty', 'Core'] 
* VER = ['latest', '2.1', 'ver']


License
-------

Apache 2.0


Author Information
------------------

alberto-m-rocha@alticelabs.com
