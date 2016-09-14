#
variable "node_count" {
  default = 2
}

resource "openstack_compute_floatingip_v2" "fip" {
    region = ""
    pool = "${var.floatip}"
}
 
resource "openstack_compute_instance_v2" "son-sp4qi" {
  count = "${var.node_count}"
  region = ""
  name = "${format("son-sp%02d",count.index+1)}"
  image_name = "${var.img_name}"
  flavor_name = "${var.flv_name}"
  key_pair = "${var.key_pair}"
  security_groups = ["${var.sec_grp}"]
  metadata {
      demo = "metadata"
  }
  network {
      uuid = "${var.internal_network_id}"
      name = "${var.internal_network_name}"
      #fixed_ip = ""
  }
  floating_ip = ["${openstack_compute_floatingip_v2.fip.address}"]
  user_data = "${file("bootstrap-son.sh")}"
}
