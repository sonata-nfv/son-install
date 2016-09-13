[all:vars]
# Environment: dev => enable repo-prod-testing or prd
env=prd

# Network to configure access in pg_hba
network=10.112.0.0

# Netmask to configure access in pg_hba
netmask=16

[historydb]
${smartiot_hosts}

[catalogdb]
${smartiot_hosts}

[inputqueue]
${smartiot_hosts}

[deliveryqueue]
${smartiot_hosts}

[listener]
${smartiot_hosts}

[processingworker]
${smartiot_hosts}

[deliveryworker]
${smartiot_hosts}

[retrydeliveryworker]
${smartiot_hosts}

[configserver]
${smartiot_hosts}

[logs]
${smartiot_hosts}

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
