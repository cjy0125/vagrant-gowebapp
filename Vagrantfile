# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.9.1"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # node: Database
    config.vm.define :'database' do |db_config| 
        db_config.vm.box = "ubuntu/trusty64"
        db_config.vm.host_name = "database.local"
        db_config.vm.network :private_network, ip: "192.168.133.100"
        db_config.vm.provider :virtualbox do |vb|
            vb.name = "database"
            vb.cpus = 1
            vb.memory = 512
            vb.gui = false
        end
    end

end
