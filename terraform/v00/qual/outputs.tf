output "inventory" {
  #value = "${join(",",openstack_compute_instance_v2.sonata-sp.*.access_ip_v4)}"
  value = "${template_file.inventory.rendered}"
}
