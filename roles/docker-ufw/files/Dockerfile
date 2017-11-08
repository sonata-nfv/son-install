FROM python:3.4-slim
MAINTAINER SONATA

# configrurations
#ENV broker_exchange son-kernel

RUN apt-get clean && apt-get update && apt-get install -y ufw nmap curl git

RUN git clone --recursive https://github.com/sonata-nfv/son-cli.git
RUN git clone --recursive -b vpsa-install https://github.com/arocha7/son-security-pilot.git


#COPY ansible/roles/docker-ufw/files/entrypoint.sh /sbin
#RUN chmod 755 /sbin/entrypoint.sh


#CMD ["/sbin/entrypoint.sh"]
ENTRYPOINT ["tail", "-f", "/dev/null"]
