#!/usr/bin/env bash

apt-get update
apt-get install -y aptitude
aptitude install -y tcpdump
aptitude install -y bridge-utils
aptitude install -y vlan
aptitude install -y tmux
aptitude install -y python3-pip
aptitude install -y git
git clone https://github.com/krawat10/EthernetSwitch.git
pip3 install -r EthernetSwitch/requirements.txt
sudo python3 EthernetSwitch/manage.py runserver 0:80
modprobe 8021q