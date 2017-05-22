FROM ubuntu:16.04
MAINTAINER arocha@ptinovacao.pt
ENV SQUID_VERSION=3.5.12 \
    SQUID_CACHE_DIR=/var/spool/squid \
    SQUID_LOG_DIR=/var/log/squid
#SQUID_USER=proxy
#SQUID_GROUP=proxy
#CACHE_MAX_SIZE: Maximum amount of storage (MB) to use for the cache store. Defaults to 100 MB
#CACHE_MAX_OBJECT_SIZE: Maximum size of an object (MB) in the cache. Defaults to 4 MB
#CACHE_MAX_MEM: Maximum amount of system memory squid is allowed to use to cached objects in the RAM
#OVERALL_SPEED_KBPS: The speed limit (Kbps) for the aggregate bucket. Defaults to -1 (unlimited)
#INDIVIDUAL_SPEED_KBPS: The speed limit (Kbps) for the individual bucket. Defaults to -1 (unlimited)
RUN apt-get update && apt-get install -y apt-utils python-software-properties software-properties-common
RUN apt-get install -y squid && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN service squid start
RUN echo "acl lan src 172.31.6.0/24" >> /etc/squid/squid.conf
RUN echo "http_access allow localhost" >> /etc/squid/squid.conf
RUN echo "http_access allow lan" >> /etc/squid/squid.conf
EXPOSE 3128
#CMD ["--port 3128"]
VOLUME [ "${SQUID_LOG_DIR}", "${SQUID_CACHE_DIR}" ]
RUN service squid restart
#ENTRYPOINT [ "/usr/sbin/squid", "restart" ]

