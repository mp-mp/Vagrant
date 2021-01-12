#!/usr/bin/env bash

apt-get update
apt-get install -y aptitude

# LLDP
apt-get install -y lldpd
/etc/init.d/snmpd start

#SNMP
apt-get install -ysnmpd snmp libsnmp-dev
sed -i 's/agentAddress.*/agentAddress udp:161,udp6:[::1]:161/g' /etc/snmp/snmpd.conf
service snmpd stop
net-snmp-create-v3-user -ro -A STrP@SSWRD -a SHA -X STr0ngP@SSWRD -x AES snmpro
service snmpd start

aptitude install -y tcpdump
#aptitude install -y apache2
#aptitude install -y bridge-utils
aptitude install -y vlan
aptitude install -y tmux
#aptitude install -y python3-pip
#pip3 install django
modprobe 8021q