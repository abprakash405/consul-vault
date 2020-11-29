#!/bin/sh
echo "127.0.0.1 client.dc1.bhanu.prakash.com" >> /etc/hosts
export CONSUL_HTTP_ADDR=https://client.dc1.bhanu.prakash.com:8501
/usr/bin/consul "$@"

