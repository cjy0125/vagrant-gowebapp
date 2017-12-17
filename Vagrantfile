# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.require_version ">= 1.9.1"
SALTVERBOSE = false

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    # node: monitor
        config.vm.define :'monitor' do |mt_config| 
        mt_config.vm.box = "ubuntu/trusty64"
        mt_config.vm.host_name = "monitor.trusty"
        mt_config.vm.network :private_network, ip: "192.168.133.99"
        mt_config.vm.provider :virtualbox do |vb|
            vb.name = "monitor"
            vb.cpus = 1
            vb.memory = 512
            vb.gui = false
        end
        mt_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
        mt_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"
        mt_config.vm.provision :salt do |salt|
            salt.minion_config = "saltstack/etc/salt/monitor.yml"
            salt.run_highstate = true
            salt.colorize = true
            salt.verbose = SALTVERBOSE
            salt.log_level = "info"
        end
    end

    # node: Database
    config.vm.define :'database' do |db_config| 
        db_config.vm.box = "ubuntu/trusty64"
        db_config.vm.host_name = "database.trusty"
        db_config.vm.network :private_network, ip: "192.168.133.100"
        db_config.vm.provider :virtualbox do |vb|
            vb.name = "database"
            vb.cpus = 1
            vb.memory = 1024
            vb.gui = false
        end
        db_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
        db_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"
        db_config.vm.provision :salt do |salt|
            salt.minion_config = "saltstack/etc/salt/database.yml"
            salt.run_highstate = true
            salt.colorize = true
            salt.verbose = SALTVERBOSE
            salt.log_level = "info"
        end
    end

    # node: webapp
        config.vm.define :'webapp' do |wa_config| 
        wa_config.vm.box = "ubuntu/trusty64"
        wa_config.vm.host_name = "webapp.trusty"
        wa_config.vm.network :private_network, ip: "192.168.133.101"
        wa_config.vm.provider :virtualbox do |vb|
            vb.name = "webapp"
            vb.cpus = 1
            vb.memory = 512
            vb.gui = false
        end
        wa_config.vm.synced_folder "saltstack/salt/", "/srv/salt"
        wa_config.vm.synced_folder "saltstack/pillar/", "/srv/pillar"
        wa_config.vm.provision :salt do |salt|
            salt.minion_config = "saltstack/etc/salt/webapp.yml"
            salt.run_highstate = true
            salt.colorize = true
            salt.verbose = SALTVERBOSE
            salt.log_level = "info"
        end
    end
    

end
