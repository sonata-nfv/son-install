Include CRUD (Create, Read/manage, Upgrade, Destroy) CLI functionality to SP SON-NFV Operations - experimental version (PoC)


## SP playbook structure

The SP CLI is invoked with the following parameters:
* target
* operation
* services
* action


### targets

* localhost - to execute on the same machine
* alias - the referenced in the hosts file (Inventory) to the machine (or group of machines)


### operations

The available type of Operations are (OPS_TYPE):
* "install" - contains the playbooks to deploy a SP from the scratch
* "manage"  - contains the playbooks to manage the global SP lyfe-cycle and its individual componentes
* "upgrade" - contains the playbooks to update the SP to a desired state
* "destroy" - contains the playbooks to uninstall a SP or its individual components


### services 

The available type of Services are (SVC_ID):
* GK:
** "gtk-pkg"
** "gtk-srv"
** "gtk-api"
** "gtk-bss"
** "gtk-gui"
** "gtk-fnct"
** "gtk-rec"
** "gtk-vim"
** (default: "gtk-all")
* REPO: 
** "catalog"
* MANO:
** "slm"
** "ssm"
** "fsm"
** "plugin-mgr"
** (default: "mano-all")
* IFTA:
** "ifta-vim"
** "ifta-wim"
** (default: "ifta-all")
* MON:
** "mon-srv"
** "mon-mgr"
** "mon-pushgw"
** (default: "mon-all")
* LOG:
** "log-srv"
** "log-elk"
** "log-graylog"
** (default: "log-all")
* ALL:
** "all" (apply to all SP services)


### versions (for Y2 - to be implemented)

The 'ver' parameter designates the SP (or SVC) version to apply ("install", "upgrade", "remove")
* ver: VERSION (default: 'latest')


### actions

The available actions for MANAGE operations are:
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
