FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y wget && \
    wget https://github.com/sysown/proxysql/releases/download/v1.4.3/proxysql_1.4.3-ubuntu16_amd64.deb -O /opt/proxysql.deb && \
    dpkg -i /opt/proxysql.deb && \
    rm -f /opt/proxysql.deb && \
    rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["proxysql", "-f"]
