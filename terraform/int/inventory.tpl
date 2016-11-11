[all:vars]
# Environment: INTEGRATION
env=qual

# Network to configure access in pg_hba
network=172.31.6.0

# Netmask to configure access in pg_hba
netmask=24

[jenkins]
${os_hosts}

[intserv1]
${os_hosts}

[intserv2]
${os_hosts}

[intserv3]
${os_hosts}


[sp4${env}:children]
jenkins
intserv1
intserv2
intserv3
