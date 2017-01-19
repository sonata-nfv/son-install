#
variable "minion_node_count" {
  default = 3
}

resource "openstack_compute_floatingip_v2" "fip" {
    region = ""
    pool = "${var.floatipnet}"
    count = "${var.minion_node_count}"
}
 
resource "openstack_compute_instance_v2" "minion" {
  count = "${var.minion_node_count}"
  region = ""
  name = "${var.vm_name}node${format("%02d",count.index)}"
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
  user_data = "${file("bootstrap-centos.sh")}"
#  provisioner "remote-exec" {
#    inline = [
#      "./bootstrap-centos.sh"
#    ]
#    connection {
#        type = "ssh"
#        user = "${var.user_distro}"
#        private_key = "${file("$HOME/.ssh/son-ift-ptin.pem")}"
#    }
#  }
}

resource "template_file" "minion_hosts" {
  count = "${var.minion_node_count}"
#  location = "${var.placement}"
  template = "${file("hostname.tpl")}"
  vars {
    index = "${count.index + 1}"
    name  = "minion"
    env   = "k8s"
    extra = " ansible_host=${element(openstack_compute_floatingip_v2.fip.*.address, count.index)}"
  }
}

