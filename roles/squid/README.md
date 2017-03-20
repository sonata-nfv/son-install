Role Name
=========

'squid' role deploys Squid proxy service to a target CentOS 7, Ubuntu 14.04 and Ubunti 16.04 guest machines


Requirements
------------

NO specific requirtements.


Role Variables
--------------

To set a particular configuration that fits your needs, just change the 'roles/squid/files/squid.conf' configuration file - example:
* proxy service port
  http_port 3128
* local address space
  acl localnet 10.112.0.0/16


Dependencies
------------

No dependencies.


Example Playbook
----------------

* cd son-install
* ansible-playbook utils/deploy/squid.yml -e target='IP-ADDRESS-OF-THE-GUEST-MACHINE'
NOTE: assure that you've previously exchanged keys (ssh-keygen / ssh-copy-id) to password-less SSH login to the target guest machine


License
-------

Apache 2.0


Author Information
------------------

Alberto Rocha, Altice Labs (arocha@ptinovacao.pt)
