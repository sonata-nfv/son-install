output "ipaddr" {
  value = "${openstack_compute_instance_v2.son-sp4qi.0.access_ip_v4}"
}
