#!/bin/sh
echo "127.0.0.1 server.dc1.bhanu.prakash.com" >> /etc/hosts
export CONSUL_HTTP_ADDR=https://server.dc1.bhanu.prakash.com:8501
/usr/bin/consul "$@"

