# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.9.1"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "ubuntu/trusty64"
    config.vm.hostname = "trusty64.vbox"

    config.vm.network :private_network, ip: "192.168.133.100"
    config.vm.provider :virtualbox do |vb|
        vb.name = "vbox-trusty"
        vb.cpus = 1
        vb.memory = 512
        vb.gui = false
    end

end
