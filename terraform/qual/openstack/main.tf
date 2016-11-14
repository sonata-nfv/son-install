#
variable "node_count" {
  default = 1
}

resource "openstack_compute_floatingip_v2" "fip" {
    region = ""
    pool = "${var.floatipnet}"
    count = "${var.node_count}"
}
 
resource "openstack_compute_instance_v2" "sonata-sp" {
  count = "${var.node_count}"
  region = ""
  name = "os-${var.vm_name}${format("%02d",count.index)}"
  image_name = "${var.img_name}"
  flavor_name = "${var.flv_name}"
  key_pair = "${var.key_pair}"
  security_groups = ["${var.sec_grp}"]
  #metadata {
  #    demo = "metadata"
  #}
  network {
      uuid = "${var.internal_network_id}"
      name = "${var.internal_network_name}"
      #fixed_ip = ""
  }
  floating_ip = "${element(openstack_compute_floatingip_v2.fip.*.address, count.index)}"
  user_data = "${file("bootstrap-${distro}.sh")}"
}

resource "template_file" "host_ipaddr" {
  count = "${var.node_count}"
#  location = "${var.placement}"
  template = "${file("hostname.tpl")}"
  vars {
    index = "${count.index + 1}"
    name  = "sp"
    env   = "qual"
    extra = " ansible_host=${element(openstack_compute_floatingip_v2.fip.*.address, count.index)}"
  }
}

resource "template_file" "inventory" {
  #count = "${var.node_count}"
  template = "${file("inventory.tpl")}"
  vars {
    env       = "qual"
    os_hosts  = "${join("\n",template_file.host_ipaddr.*.rendered)}"
  }
}

