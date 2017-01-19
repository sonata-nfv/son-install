
# TENANT AUTH
os_auth_url = "http://172.31.6.9:5000/v2.0"
os_tenant   = "k8s"
os_username = "son-admin"
os_password = "S0n-Adm1n"

# VM
vm_name  = "k8s-"
img_name = "Core"
flv_name = "m1.test"
sec_grp  = "k8s-secgrp"
key_pair = "son-ift-ptin"
key_path = "~/.ssh/son-ift-ptin.pem"

# NETW
internal_network_name = "k8s-netw"
internal_network_id   = "af1fbf15-2bb0-4fde-9dcb-b3fb6944341a" # K8S NETW

# FIP
floatipnet    = "admin_floating_net"
# floatipaddr = ""

# LOCATION
#region            = "RegionOne"
#availability_zone = "nova"



# TF REMOTE-EXEC
user_distro = "centos"
