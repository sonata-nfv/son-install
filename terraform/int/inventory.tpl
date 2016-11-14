[all:vars]
# Environment: INTEGRATION | QUALIFICATION | DEMONSTRATION
env=int

# Network to configure access in pg_hba
network=172.31.6.0

# Netmask to configure access in pg_hba
netmask=24

[sp]
${jenkins_hosts}
${intsrv_hosts}

[nfv]
${os_hosts}

[ns:children]
nfv

[sp4${env}:children]
sp
ns
