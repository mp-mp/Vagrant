#!/usr/bin/env bash

apt-get update
apt-get install -y aptitude
aptitude install -y tcpdump
aptitude install -y apache2
aptitude install -y bridge-utils
aptitude install -y vlan
aptitude install -y tmux
aptitude install -y python3-pip
pip3 install django
modprobe 8021q