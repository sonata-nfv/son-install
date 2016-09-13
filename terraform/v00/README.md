SCOPE
=====
This version implements multi-environment without using Modules, BUT doesn't consider multi-infrastructure, neither multi-location. Hups! 


STRUCTURE 
=========
For each Environment, a Directory is created:
* dev - for Development Infrastructure
* int - for Integration Infrastructure
* qual - for Qualification Infrastructure
* demo - for Demonstration Infrastructure

Each Directory contains its specific configuration code, ie,
* providers.tf (use variables)
* variables.tf (CHANGES GOES HERE)
* main.tf (use variables)
* output.tf


USAGE
=====
$ cd 'env'

$ terraform plan [-var "vm_name=son-sp4qi" -var "distro=trusty"]

NOTE: use 'var' only for non-default values


FEEDBACK TO
===========
arocha@ptinovacao.pt
