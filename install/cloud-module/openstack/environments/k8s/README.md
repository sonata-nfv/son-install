# Deployment of a MULTISTAGE platform with 2 NGINX guests and 2 PostgreSQL guests
This playbook follows the recommended [best pratices](http://docs.ansible.com/ansible/playbooks_best_practices.html) to organize playbook content, by the separation of inventory variables between different environments,

The static inventory is generated according to a structure defined at a [jinja2] template:

[db]
vm-pg01
vm-pg02

[www]
vm-web01
vm-web02

## How to invoke

* ansible-playbook deploy.yml  -e "environ=dev" 
* ansible-playbook destroy.yml -e "environ=dev" 
