output "ipaddr" {
  value = "${join(",", openstack_compute_instance_v2.son-sp4qi.*.access_ip_v4)}"
}
