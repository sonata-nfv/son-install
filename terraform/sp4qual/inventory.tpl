[all:vars]
# Environment: QUALIFICATION

# Network to configure access in pg_hba
network=172.31.6.0

# Netmask to configure access in pg_hba
netmask=24

[sp]
${os_hosts}

[sp4${env}:children]
sp

