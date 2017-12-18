# vagrant-gowebapp

### Introduction
This repo is a sample code for the gowebapp framework which is deploied by vagrant and saltstack, it includes monitoring server: [Sensu](https://sensuapp.org) and dashboard: [Uchiwa](https://uchiwa.io/#/) with basic monitoring items.

### Environment preparation
Please install and setup following tools for the preparation
1. git <https://git-scm.com>
2. Vagrant <https://www.vagrantup.com>
3. VirtualBox <https://www.virtualbox.org>


### Setup instruction
1. Clone this repo with following command
`git clone git@github.com:cjy0125/vagrant-gowebapp.git`
2. Change working dir to this repo
`cd vagrant-gowebapp`
3. Deploy 
`vagrant up`
4. Once everything is done, check the gowebapp portal
http://192.168.133.101
5. And the dashboard: Uchiwa
http://192.168.133.99:3000 with user: monitor password: foo