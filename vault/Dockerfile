FROM ubuntu:16.04
RUN apt-get update && \
apt-get install unzip wget curl vim -y

WORKDIR /home/ubuntu/

ENV VAULT_ADDR "https://client.dc1.bhanu.prakash.com:8200"
ENV api_addr "https://client.dc1.bhanu.prakash.com:8200"
ENV cluster_addr "https://client.dc1.bhanu.prakash.com:8201"
ENV CONSUL_HTTP_ADDR "https://client.dc1.bhanu.prakash.com:8500"


RUN wget https://releases.hashicorp.com/vault/1.5.3/vault_1.5.3_linux_amd64.zip
#RUN wget https://releases.hashicorp.com/vault/1.2.0/vault_1.2.0_linux_amd64.zip
#RUN unzip vault_1.2.0_linux_amd64.zip
RUN unzip vault_1.5.3_linux_amd64.zip
RUN mv vault /usr/bin

RUN mkdir /etc/vault

COPY certs .
RUN cat bhanu.prakash.com-agent-ca.pem >> /etc/ssl/certs/ca-certificates.crt


COPY config.hcl /etc/vault/config.hcl

COPY hosts /tmp/hosts

CMD cat /tmp/hosts >> /etc/hosts; /usr/bin/vault server -config=/etc/vault/config.hcl

