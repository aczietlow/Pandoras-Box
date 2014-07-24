# Vagrant Development Box

Pandora's Box provides an PHP development environment for modern PHP Frameworks. One of the goals of Pandora's box is to allow a developer to easily select what versions of standard packages they want through a json config file, while providing a robust development environment complete with all the bells and whistles.

## prereqs

* Virtualbox
* Vagrant

### Vagrant plugins

  * Berkshelf
    
  	>gem install berkshelf

    >vagrant plugin install vagrant-berkshelf

  * Vangrant hostmanager

    >vagrant plugin install vagrant-hostmanager

  * Vagrant Omibus plugin
  
    >vagrant plugin install vagrant-omnibus

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
