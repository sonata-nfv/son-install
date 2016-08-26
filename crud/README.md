Include CRUD (Create, Read/manage, Upgrade, Destroy) CLI functionality to SP SON-NFV Operations - experimental version (PoC)


## SP playbook parameters

The SP CLI tool 'son-nfv' is invoked with the following parameters:
* target
* operation
* service
* action


### target

* localhost - to execute on the same machine
* alias - the referenced in the hosts file (Inventory) to the machine (or group of machines)


### operation

The available type of Operations are (OPS_TYPE):
* "install" - contains the playbooks to deploy a SP from the scratch
* "manage"  - contains the playbooks to manage the global SP lyfe-cycle and its individual componentes
* "upgrade" - contains the playbooks to update the SP to a desired state
* "destroy" - contains the playbooks to uninstall a SP or its individual components


### service

The available type of Services are (SVC_ID):

GK:
* "gtk-pkg"
* "gtk-srv"
* "gtk-api"
* "gtk-bss"
* "gtk-gui"
* "gtk-fnct"
* "gtk-rec"
* "gtk-vim"
* "gtk-all" (default)

REPO: 
* "catalog"

MANO:
* "slm"
* "ssm"
* "fsm"
* "plugin-mgr"
* "mano-all" (default)

IFTA:
* "ifta-vim"
* "ifta-wim"
* "ifta-all" (default)

MON:
* "mon-srv"
* "mon-mgr"
* "mon-pushgw"
* "mon-all" (default)

LOG:
* "log-srv"
* "log-elk"
* "log-graylog"
* "log-all" (default)

ALL:
* "all" (apply to all SP services)


### version (for Y2 - to be implemented)

The 'version' parameter designates the SP or SVC version to apply on install", "upgrade", "remove" operations
* VERSION_ID (default: 'latest')


### action

The action parameter is only used at MANAGE operations:
* start, stop, restart, status


## SP CLI

### INSTALL SP ALL
$ ansible-playbook son-nfv.yml -e "target=localhost operation=OPS_TYPE service=ALL|SVC_ID" -vvvv

### MANAGE SP ALL
$ ansible-playbook son-nfv.yml -e "target=localhost operation=OPS_TYPE service=ALL|SVC_ID action=status,stop,start,restart" -vvvv

### UPGRADE SP ALL
$ ansible-playbook son-nfv.yml -e "target=localhost operation=OPS_TYPE service=VERSION svc=ALL|SVC_ID" -vvvv

### REMOVE SP ALL
$ ansible-playbook son-nfv.yml -e "target=localhost operation=OPS_TYPE service=ALL|SVC_ID" -vvvv


## Report feedback to:
'Alberto Rocha', <arocha@ptinovacao.pt>
