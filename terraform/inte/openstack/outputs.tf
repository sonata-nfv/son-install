resource "template_file" "sp4int_inventory" {
  template = "${file("inventory.tpl")}"
  vars {
    jk_host = "${join("\n",template_file.jk_host_ipaddr.*.rendered)}"
    intsrv_host = "${join("\n",template_file.host_ipaddr.*.rendered)}"
  }
}

output "sp4int_inventory" {
  value = "${template_file.inventory.rendered}"
}
