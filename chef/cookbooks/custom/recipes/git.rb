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