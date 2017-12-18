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
```
git clone git@github.com:cjy0125/vagrant-gowebapp.git
```
2. Change working dir to this repo
```
cd vagrant-gowebapp
```
3. Deploy 
```
vagrant up
```
4. Once everything is done, check the gowebapp portal
http://192.168.133.101
5. And the dashboard: Uchiwa
http://192.168.133.99:3000 with user/password: monitor/foo

### Node definition
Following shows the relevant informations for each nodes, and also you can directly use following command to login specified vm `vagrant ssh $Hostname`

| Hostname | IP | Description  |
|----------|----|----------------|
|monitor|192.168.133.99| Sensu monitor with Uchiwa dashboard|
|database| 192.168.133.100| MySQL with initialize DB schema for gowebapp|
|webapp| 192.168.133.101| [Gowebapp](https://github.com/josephspurrier/gowebapp): Basic MVC Web Application in Go|
