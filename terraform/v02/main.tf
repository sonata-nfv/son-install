variable "node_count" {
  default = 1
}

module "vim_type" {
  source = "./modules/vim_type"
  #user_data="${foo}"
}

module "qualification" {
  source = "./modules/vim_type/placement/ptin/env/qualification"
}

# create SONATA-NFV instances
resource "openstack_compute_instance_v2" "son-sp4qi" {
  count = "${var.node_count}"
  #name = "${lookup(var.node_name_list, count.index)}"
  name = "son-sp4qi-${count.index}"
  image_name = "${var.image}"
  flavor_name = "${var.flavor}"
  #key_pair = "${var.keypair}"
  security_groups = [
    "son-qual-secgrp"
  ]
  network = {
    name = "{var.qual}"
  }
}
