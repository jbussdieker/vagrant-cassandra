# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider "virtualbox" do |virtualbox|
    virtualbox.memory = 1536
    virtualbox.cpus = 1
  end

  config.vm.box = "http://cloud-images.ubuntu.com/vagrant/trusty/20140712/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network "private_network", type: "dhcp"

  #config.vm.network "forwarded_port", guest: 8888, host: 8888, auto_correct: true
  config.vm.network "forwarded_port", guest: 9042, host: 9042, auto_correct: true
  config.vm.network "forwarded_port", guest: 9160, host: 9160, auto_correct: true

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path = "modules"
    puppet.hiera_config_path = "hiera.yaml"
    puppet.options = "--show_diff"
  end
end
