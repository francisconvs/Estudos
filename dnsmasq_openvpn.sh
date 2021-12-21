#!/bin/bash

wget https://git.io/vpn -O openvpn-install.sh && bash openvpn-install.sh
sed '/dhcp-option/d'/etc/openvpn/server/server.conf
echo 'push "dhcp-option DNS 10.8.0.1"' >> /etc/openvpn/server/server.conf

apt-get install dnsmasq -y

# sed -i 's/#domain-needed/domain-needed/' /etc/dnsmasq.conf
# sed -i 's/#bogus-priv/bogus-priv/' /etc/dnsmasq.conf
echo "" > /etc/dnsmasq.conf
echo "domain-needed" > /etc/dnsmasq.conf
echo "bogus-priv" > /etc/dnsmasq.conf
echo "listen-address=127.0.0.1" >> /etc/dnsmasq.conf
echo "listen-address=10.8.0.1" >> /etc/dnsmasq.conf
echo "server=1.1.1.1" >> /etc/dnsmasq.conf
echo "server=1.0.0.1" >> /etc/dnsmasq.conf

cat << EOF > monta_hosts.sh 
#!/bin/bash
wget https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts -O /tmp/raw_hosts
wget https://adaway.org/hosts.txt -O /tmp/adaway_hosts
echo "127.0.1.1       $HOSTNAME" > /etc/hosts
cat /tmp/adaway_hosts /tmp/raw_hosts >> /etc/hosts
sed -i 's/0.0.0.0/127.0.0.1/g' /etc/hosts
service dnsmasq restart
echo "------------------------------------" >> ~/log_hosts.log
date >> ~/log_hosts.log
wc -l /etc/hosts >> ~/log_hosts.log
EOF

cat << EOF > /etc/cron.d/monta_host
0 0 * * * bash /root/monta_hosts.sh
EOF

rm -f /etc/resolv.conf
echo "nameserver 127.0.0.1" > /etc/resolv.conf

bash monta_hosts.sh

systemctl stop systemd-resolved.service
systemctl disable systemd-resolved.service

service dnsmasq restart 
service openvpn restart