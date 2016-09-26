[all:vars]
# Environment: dev => enable repo-prod-testing or prd
env=qual

# Network to configure access in pg_hba
network=172.31.6.0

# Netmask to configure access in pg_hba
netmask=24

[historydb]
${os_hosts}

[catalogdb]
${os_hosts}

[inputqueue]
${os_hosts}

[deliveryqueue]
${os_hosts}

[listener]
${os_hosts}

[processingworker]
${os_hosts}

[deliveryworker]
${os_hosts}

[retrydeliveryworker]
${os_hosts}

[configserver]
${os_hosts}

[logs]
${os_hosts}

[${env}:children]
historydb
catalogdb
inputqueue
deliveryqueue
listener
processingworker
deliveryworker
retrydeliveryworker
configserver
logs
