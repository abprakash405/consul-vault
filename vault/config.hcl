storage "consul" {
  address = "client.dc1.bhanu.prakash.com:8501"
  path = "vault/"
  scheme = "https"
  tls_skip_verify = 0
  tls_key_file = "/home/ubuntu/dc1-client-bhanu.prakash.com-0-key.pem"
  tls_cert_file = "/home/ubuntu/dc1-client-bhanu.prakash.com-0.pem"
}

listener "tcp" {
address = "client.dc1.bhanu.prakash.com:8200"
tls_disable = 0
tls_key_file = "/home/ubuntu/dc1-client-bhanu.prakash.com-0-key.pem"
tls_cert_file = "/home/ubuntu/dc1-client-bhanu.prakash.com-0.pem"
}

ui=true

api_addr="https://client.dc1.bhanu.prakash.com:8200"
cluster_addr="https://client.dc1.bhanu.prakash.com:8201"
