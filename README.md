# Vagrant Development Box

Pandora's Box provides an PHP development environment for modern PHP Frameworks. One of the goals of Pandora's box is to allow a developer to easily select what versions of standard packages they want through a json config file, while providing a robust development environment complete with all the bells and whistles.

##prereqs

* Virtualbox
* Vagrant

###Vagrant plugins

  * Berkshelf
    
  	>gem install berkshelf
    
    >vagrant plugin install vagrant-berkshelf

  * Vangrant hostmanager

    >vagrant plugin install vagrant-hostmanager

  * Vagrant Omibus plugin
  
    >vagrant plugin install vagrant-omnibus