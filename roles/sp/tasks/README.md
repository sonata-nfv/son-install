# Deployment of a MULTISTAGE platform with 2 NGINX guests and 2 PostgreSQL guests
This playbook follows the recommended [best pratices](http://docs.ansible.com/ansible/playbooks_best_practices.html) to organize playbook content, by the separation of inventory variables between different environments,

The inventory is automaticaly generated according to a structure defined at a [jinja2] template - eg:

[ci]
ci01
ci02
ci03
ci04

[sp]
sp01

[vnf]
vnf01
vnf02


## To deploy the Qual env
In the current version, the default variables points to:
* vim: os
* pop: alb
* environ: qual
NOTE: to change these variables, just change 'vars/defaults.yml' or overload some with '-e' (--extra) 

   ansible-playbook deploy.yml


## To destroy the Qual env
   ansible-playbook destroy.yml


## Auth
Avoiding to publish passwords at Github repos, the authentication credentials should be at '~/.config/openstack/clouds.yaml' - eg:

 clouds:
 
   os_ptin:
     #private: true
     region_name: RegionOne
     auth:
       auth_url: http://172.31.6.9:5000/v2.0/
       username: son-qual
       password: ********
       project_name: son-qual
 
   os_ncsrd:
     auth:
       auth_url: http://10.31.1.3:5000/v2.0/
       username: sonata.qual
       password: ***********
       project_name: sonata.qual

