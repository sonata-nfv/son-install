yum groupinstall "Development tools" -y
yum install python-devel python-pip -y
yum install openssl-devel
yum install libffi-devel
pip install munch
pip install python-openstackclient
pip install python-heatclient
pip install python-magnumclient
pip install python-neutronclient
pip install python-troveclient
pip install python-designateclient
pip install python-ironicclient
yum install wget -y
wget https://pypi.python.org/packages/cc/6a/51fdde55a5ab2bb74ab123e5b8003587bd883ee417b51e389b7986d0f545/shade-1.12.1.tar.gz#md5=7a49274c19fef9a17dda8465db6b37eb
gunzip shade-1-12-1.tar.gz
tar xvf shade-1-12-1.tar
cd shade-1.12.1
python setup.py install

