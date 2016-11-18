Sonata-NFV SP deploy Operations
* install the SP from the scratch
* install an individual SP service

## Install all SP services
$ ansible-playbook son-cmud.yml -e "target=localhost operation=install service=all"

# Install an individual SP Service (eg, SVC-ID)
$ ansible-playbook son-cmud.yml -e "target=localhost operation=install service='SVC-ID'"

## Report feedback to:
'Alberto Rocha', <arocha@ptinovacao.pt>
