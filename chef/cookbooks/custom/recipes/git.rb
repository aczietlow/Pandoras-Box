package "git" do
  action :install
end

#Add git config
template "/home/vagrant/.gitconfig" do
  source "gitconfig.erb"
  owner "vagrant"
  group "vagrant"
  mode "0644"
end

# Add gitsh
git "/usr/local" do
  repository "git://github.com/rtomayko/git-sh.git"
  revision "master"
  action :sync
end

# execute "make gitsh" do
#   cwd "/usr/local/git-sh"                                                           
#   user "vagrant"                                                                
#   environment ({'HOME' => '/home/vagrant', 'USER' => 'vagrant'})  
#   command "make"
#   action :run
# end

# execute "make install gitsh" do
#   cwd "/usr/local/git-sh"                                                                                                                           
#   command "sudo make install"
#   action :run
# end