A set of useful roles:
* NTP
* Apache
* NGINX
* OTRS 5

===
How to invoke:
# NTP
$ ansible-playbook utils/deploy-ntp.yml -e "target=localhost" -vvvv
# Apache
$ ansible-playbook utils/deploy-apache.yml -e "target=localhost" -vvvv
# NGINX
$ ansible-playbook utils/deploy-nginx.yml -e "target=localhost" -vvvv
# OTRS 5
$ ansible-playbook utils/deploy-otrs5.yml -e "target=localhost" -vvvv

===
Report feedback to: 
'Alberto Rocha <arocha@ptinovacao.pt>'
