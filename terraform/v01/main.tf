#
resource "openstack_compute_floatingip_v2" "fip" {
  source = "./modules/placement"
  region = ""
  pool = "${concat(var.os_pool_,var.pop)}"
}
 
resource "openstack_compute_instance_v2" "son-sp" {
  #region = ""
  name = "son-sp4-${var.env}"
  image_name = "centos7-cldimg"
  flavor_name = "m1.small"
  key_pair = "son-ift-ptin"
  security_groups = ["son-qual-secgrp"]
  metadata {
      demo = "metadata"
  }
  network {
      uuid = "ffdf5f4f-eeee-49ac-ac34-ccaf814bfb84"
      name = "son-qual-netw"
      fixed_ip = ""
  }
  floating_ip = "${openstack_compute_floatingip_v2.fip.address}"
}
