#Add composer.json global file
directory "/home/vagrant/.composer" do
  owner "vagrant"
  group "vagrant"
  mode "775"
  action :create
end

template "/home/vagrant/.composer/composer.json" do
  source "composer.json.erb"
  owner "vagrant"
  group "vagrant"
  mode "0775"
end

execute "composer install" do
  cwd "/home/vagrant"                                                           
  user "vagrant"                                                                
  environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})  
  command "composer global install"
  action :run
end