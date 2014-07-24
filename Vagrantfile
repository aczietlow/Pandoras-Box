# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Load config JSON
   ooyala_config_path = File.expand_path(File.dirname(__FILE__)) + "/config.json"
   ooyala_config = JSON.parse(File.read(ooyala_config_path))

  # Base box
  config.vm.box = "trusty64"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.hostname = "pandoras-box.dev"

  # Forward ssh keys to allow git cloning.
  config.ssh.forward_agent = true
  config.vm.network :forwarded_port, guest: 80, host: 8080  

  # Networking
  config.vm.network :private_network, ip: ooyala_config["ip"]

  config.vm.synced_folder "data/", "/home/vagrant/Sites", type: "nfs"

  # Set virtual machine memory.
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", ooyala_config["memory"]]
  end

  # Use the latest version of Chef
  config.omnibus.chef_version = :latest

  config.vm.provision :chef_solo do |chef|
    # Install dependencies using berkshelf.
    config.berkshelf.enabled = true
    config.berkshelf.berksfile_path = 'chef/Berksfile'
    
    #debug
    #chef.log_level = :debug

    chef.json = ooyala_config
    chef.cookbooks_path = "chef/cookbooks"
    chef.roles_path = "chef/roles"
    chef.data_bags_path = "chef/data_bags"
    chef.add_role "vagrant-php-dev-box"
  end
end
