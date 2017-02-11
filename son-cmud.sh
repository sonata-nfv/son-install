#!/bin/bash

echo Usage: ansible-playbook son-cmud.yml -e "ops='C/M/U/D' environ='QUAL/DEMO/SP' action'START/STOP/STATUS/TEST svc='ALL/GTK/MANO/IFTA'"

echo SONATA CMUD invoked with $# arguments:

while [ $# -ne 0  ]
do
        echo $1
        shift
done

ansible-playbook son-cmud.yml -e "ops=$1 environ=$2 action=$3 svc=$4"
