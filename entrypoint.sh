#!/bin/sh

cd /frps

cat <<-EOF > /frps/frps.ini
[common]

bind_port = 443
dashboard_port = 80
dashboard_user = admin
dashboard_pwd = ${dash_password}
token = ${token}


EOF

echo $PORT
/frps/frps -c /frps/frps.ini
