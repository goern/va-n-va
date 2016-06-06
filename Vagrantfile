# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"

  config.vm.provider :libvirt do |domain|
    domain.memory = 8192
    domain.cpus = 4
  end

  config.vm.provision "shell", path: "nested-kvm.sh"
  config.vm.provision "shell", path: "virtualization.sh"
  config.vm.provision "shell", path: "vagrant-libvirt.sh"
end
