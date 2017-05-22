haproxy
=========

The [haproxy](http://www.haproxy.org/) role implements an High Availability Proxy for:

* CentOS 7 - the plays for Redhat/Centos family follows the manual procedure
* Ubuntu 16.04 and Ubuntu 14.04 distros - the plays for Debian/Ubuntu family use the packages provided by PPA

Current haproxy stable version: 1.7.2 (January 2017)


Requirements
------------

n.a.


Role Variables
--------------
The following files are empty:
* defaults/main.yml
* vars/main.yml
* host_vars/all
* group_vars/all


Dependencies
------------

n.a.


Example Playbook
----------------

An example of how to use this role:

 $ ansible-playbook utils/deploy/haproxy.yml -e target=localhost



Documentation
-------------

* [How to Install HAProxy Load Balancer on CentOS](https://www.upcloud.com/support/haproxy-load-balancer-centos/)
* [How to Install HAProxy Load Balancer on Ubuntu](https://www.upcloud.com/support/haproxy-load-balancer-ubuntu/)


License
-------

BSD


Author Information
------------------
[Alberto Rocha](arocha@ptinovacao.pt)
