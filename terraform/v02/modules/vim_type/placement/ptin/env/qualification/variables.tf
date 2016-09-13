variable "openstack_auth_url" {
    description = "Endpoint URL to connect to PTIN OpenStack."
    default = "http://172.31.6.4:5000/v2.0"
}

variable "openstack_user_name" {
    description = "The username belonging to a Tenant"
    default  = "son-qual"
}

variable "openstack_password" {
    description = "The password for the Tenant's user"
    default = "S0n-qu@l"
}

variable "keypair" {
    description = "The keypair to be used"
    default = "son-ift-ptin"
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant"
    default = "son-qual"
}

variable "tenant_id" {
    description = "The Tenant ID for ADMIN"
    default = "d25999e1eea34010bbf4698c81ca844e"
}

variable "tenant-net" {
    description = "External subnet PTIN: 172.31.6.0/24"
    default = "son-qual-netw"
}

variable "external-gw" {
  description = "(Optional) The network UUID of an external gateway for the router"
  default = ""
}

variable "pool" {
  description = "The name of the pool from which to obtain the floating IP"
  default = ""
}

variable "image" {
  description = "the name of the Image uploaded to the Registry"
  default = "trusty-cldimg"
}

variable "flavor" {
  description = "the name of the flavor with allocatates resources"
  default = "m1.small"
}

variable "region_name" {
  description = "Region name"
  default = "RegionOne"
}

