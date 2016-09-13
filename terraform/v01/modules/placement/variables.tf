variable "os_pool_ptin" {
  description = "PTIN Openstack Floating IP pool"
  default = "admin_floating_net"
}

variable "os_pool_ncsrd" {
  description = "NCSRD Openstack Floating IP pool"
  default = ""
}


variable "pop" {
  description = "Point-of-Presence"
  default = "ncsrd"
}

variable "os_auth_url_ptin" {
  description = "PTIN Openstack keystone authentication"
  default = "http://172.31.6.4:5000/v2.0"
}

variable "os_auth_url_ncsrd" {
  description = "NCSRD Openstack keystone authentication"
  default = "http://10.31.1.4:5000/v2.0"
}

