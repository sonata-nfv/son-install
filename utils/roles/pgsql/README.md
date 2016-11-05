Role Name
=========

'pgsql' role installs PostgreSQL on multiple distros (currently CentOS 7 and Ubuntu 14.04 and 16.04). The playbook maps the steps described here: https://wiki.postgresql.org/wiki/YUM_Installation


Requirements
------------


Role Variables
--------------
Current version is: 9.6
To install a different version, change variable "tarball". 
To set your own dbname, username and passwd, change it at 'vars'


Dependencies
------------
Previous install Python module "psycopg2"


Example Playbook
----------------
Usage:
$ ansible-playbook deploy-pgsql.yml -e target=localhost
$ ansible-playbook destroy-pgsql.yml -e target=localhost


License
-------


Author Information
------------------
"Alberto Rocha", arocha@ptinovacao.pt
