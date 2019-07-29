# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.define "master-ben" do |node|
    node.vm.box = "ubuntu-server-16.04-amd64-vagrant.box"
    node.vm.hostname = "master-ben"
    node.vm.network "public_network", bridge: "en1"
    node.vm.synced_folder "./share", "/home/vagrant/share"
    node.vm.provider "virtualbox" do |v|
      v.gui = false
      v.name = "master-ben"
      v.memory = 4096
      v.cpus = 2
    end
  end
  
  config.vm.define "node-ben" do |node|
    node.vm.box = "ubuntu-server-16.04-amd64-vagrant.box"
    node.vm.hostname = "node-ben"
    node.vm.network "public_network", bridge: "en1"
    node.vm.synced_folder "./share", "/home/vagrant/share"
    node.vm.provider "virtualbox" do |v|
      v.gui = false
      v.name = "node-ben"
      v.memory = 4096
      v.cpus = 2
    end
  end
end
