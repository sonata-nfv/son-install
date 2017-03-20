FROM ubuntu:16.04
MAINTAINER arocha@ptinovacao.pt
RUN apt-get update -y
RUN apt-get install -y squid
RUN service squid start
VOLUME /var/log/squid
EXPOSE 3128
#CMD ["--port 3128"]
ENTRYPOINT "/etc/init.d/squid start"

