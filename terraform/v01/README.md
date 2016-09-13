
SCOPE
=====
Due to the offcial Terraform recomendation "don't nest modules", due to root visibility, this approach has 4 modules:
* vim_type
** eg: openstack, osm, aws/gcp/azr, vmware/esx
* placement
** NSCRD, PTIN
* environment
** development, integration, qualification, demonstration
* distro
** Ubuntu 14.04 trusty, Ubuntu 16.04 xenial, CentOS 7


USAGE
=====
Example to deploy an Ubuntu 14.04 instance to an Openstack plaform located at PTIN infrastructure for Qualification environment

$ terraform plan -var="vim_type=openstack" -var="placement=ptin" -var="env=qualification" -var="distro=trusty"


DEVELOPERS
==========
* arocha@ptinovacao.pt
