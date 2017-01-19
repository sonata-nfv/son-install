[all:vars]
# Environment: KUBERNETES CLUSTER
env=k8s

# Network to configure access
network=172.31.6.0

# Netmask to configure access
netmask=24

[mst]
${mst_host}

[minion]
${minion_host}

[kube:children]
mst
minion
