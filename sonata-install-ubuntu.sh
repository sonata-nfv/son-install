#!/bin/bash
if [[ $(whoami) != "root" ]]; then
	exit 1;
else
echo '                            __                    ____     '
echo '    _________  ____  ____ _/ /_____ _      ____  / __/   __'
echo '   / ___/ __ \/ __ \/ __ `/ __/ __ `/_____/ __ \/ /_| | / /'
echo '  (__  ) /_/ / / / / /_/ / /_/ /_/ /_____/ / / / __/| |/ / '
echo ' /____/\____/_/ /_/\__,_/\__/\__,_/     /_/ /_/_/   |___/  '
echo '                                                           '
echo ' '
echo "Cleaning apt"
apt-get clean all
echo "Check and install software-properties-common"
apt-get update
apt-get install -y software-properties-common git
echo "Installing ansible"
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible

echo "Starting Sonata installation"
git clone https://github.com/sonata-nfv/son-install.git
cd son-install
ansible-playbook deploy-sp-all.yml -e targets=localhost
fi

echo '                            __                    ____     '
echo '    _________  ____  ____ _/ /_____ _      ____  / __/   __'
echo '   / ___/ __ \/ __ \/ __ `/ __/ __ `/_____/ __ \/ /_| | / /'
echo '  (__  ) /_/ / / / / /_/ / /_/ /_/ /_____/ / / / __/| |/ / '
echo ' /____/\____/_/ /_/\__,_/\__/\__,_/     /_/ /_/_/   |___/  '
echo '                                                           '
echo ' '
echo "THE SONATA'S SERVICE PLATFORM HAS BEEN INSTALLED"
