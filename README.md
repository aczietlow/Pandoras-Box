# Vagrant Development Box

[description]

## prereqs

* Virtualbox | https://www.virtualbox.org/wiki/Downloads
* Vagrant | https://www.vagrantup.com/downloads.html

### Vagrant plugins

  * Vangrant hostmanager

    >vagrant plugin install vagrant-hostmanager

  * Vagrant Omibus plugin
  
    >vagrant plugin install vagrant-omnibus

  * Berkshelf

    >vagrant plugin install vagrant-berkshelf

## Server Details

*Pro Tip: The file mount requires sudo. So don't forget to enter your password before you get up to get coffee while this runs. It should take <15 minutes during the first build.

### Apache
  * version: 2.4

### PHP
  * version 5.5.9

### Mysql
  * version: 14.14
  * username: root
  * password: root

### Mongodb
  * version: 2.4.9
  * username: root
  * password: root

### zeromq
  * version: 3.2.4
