resource "template_file" "inventory" {
  template = "${file("inventory.tpl")}"
  vars {
    mst_host = "${join("\n",template_file.mst_hosts.*.rendered)}"
    minion_host = "${join("\n",template_file.minion_hosts.*.rendered)}"
  }
}

output "inventory" {
  value = "${template_file.inventory.rendered}"
}
