#!/usr/bin/env bash

apt-get update
apt-get install -y aptitude
aptitude install -y tcpdump
aptitude install -y bridge-utils
aptitude install -y vlan
aptitude install -y tmux
aptitude install -y git
sudo apt install -y gnupg

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget -q https://packages.microsoft.com/config/debian/10/prod.list
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list

sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y aspnetcore-runtime-3.1
sudo apt-get update
sudo apt-get install -y dotnet-runtime-3.1
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1


git clone https://github.com/krawat10/EthernetSwitch.git
sudo dotnet run --project EthernetSwitch/NewProject/EthernetSwitch/EthernetSwitch

# pip3 install -r EthernetSwitch/requirements.txt
# sudo python3 EthernetSwitch/manage.py runserver 0:80
# modprobe 8021q