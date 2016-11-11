GOAL
----
Deploy infrastructure for Sonata Service Platform (SP) multi-environment, namely Integration, Qualification and Demonstration


REQUIREMENTS
------------
* Multi-VIM - Openstack Provider is mandatory (others in the near future, eg: AWS)
* Multi-Location - for PoC 2 sites are used (NCSRD and ALB) 
* Multi-Distro - actualy, CentOS 7, Ubuntu 14.04 and Ubuntu 16.04 is being tested 

The implementation uses Modules
* a module is a collection of `*.tf` files, with specified inputs (variables), and predefined outputs


STRUCTURE
---------

* ENV: INT

1. deploy 4 VM's (INT-SRV#1, INT-SRV#2, INT-SRV#3 and JENKINS) at VIM (Openstack)

2. pull the services (Docker Images) for each VM and run it



* ENV: QUAL

1. deploy 1 VM at VIM

2. pull the SP services (actually, 24 Docker Images) and run it

3. pull the Qualification services (eg, Security tests, Perfromance tests, Conformance tests) 

4. run the Qualification tests


* ENV: DEMO

1. deploy 1 VM at VIM

2. pull the SP services (actually, 24 Docker Images) and run it

3. deploy VNF/NS's to the remote VIM


USAGE
-----

$ cd 'ENVIRON'
$ terraform plan
$ terraform apply


FEEDBACK TO
-----------

arocha@ptinovacao.pt
