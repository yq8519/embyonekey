#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
curl https://raw.githubusercontent.com/yq8519/embyonekey/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /www/server/panel/vhost/nginx/*-*-*-*
wget https://raw.githubusercontent.com/yq8519/embyonekey/master/user.conf
nginx -s reload

