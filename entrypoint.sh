#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]
bind_port = 80
token = $token
tls_enable=true
EOF

echo $PORT
/frps/frps -c /frps/frps.ini
