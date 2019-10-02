#!/bin/sh

UUID=23ad6b10-8d1a-40f7-8ad0-e3e35cd38297
VERSION=4.20.0
PORT=80

apt update
apt install -y curl unzip

modprobe tcp_bbr
echo "tcp_bbr" >> /etc/modules-load.d/modules.conf
echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p

cd /tmp
curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v${VERSION}/v2ray-linux-64.zip
mkdir -p /opt/v2ray
unzip v2ray.zip -d /opt/v2ray
chmod +x /opt/v2ray/v2ray
chmod +x /opt/v2ray/v2ctl
rm -rf v2ray.zip

curl -L -H "Cache-Control: no-cache" -o /opt/v2ray/config.server.json https://raw.githubusercontent.com/lbp0200/v2ray-vultr/master/server.json 
curl -L -H "Cache-Control: no-cache" -o /etc/systemd/system/v2ray.service https://raw.githubusercontent.com/lbp0200/v2ray-vultr/master/v2ray.service

sed -i "s/23ad6b10-8d1a-40f7-8ad0-e3e35cd38297/${UUID}/g" "/opt/v2ray/config.server.json"
sed -i "s/80/${PORT}/g" "/opt/v2ray/config.server.json"

systemctl enable v2ray.service
systemctl start v2ray.service
