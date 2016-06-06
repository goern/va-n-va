#!/bin/bash

yum install -y wget gcc make libvirt-devel
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
yum localinstall -y vagrant_1.8.1_x86_64.rpm
vagrant plugin install vagrant-libvirt
sudo usermod -G libvirtd -a root

systemctl enable libvirtd
systemctl start libvirtd

cd /tmp
vagrant init centos/7
vagrant --provider=libvirt up
