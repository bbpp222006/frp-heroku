#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]

bind_port = $PORT
kcp_bind_port = 9527
dashboard_port = 9530
dashboard_user = admin
dashboard_pwd = $DASH
vhost_http_port = 9528
vhost_https_port = 9529
token = $TOKEN


EOF

echo $PORT
/frps/frps -c /frps/frps.ini
