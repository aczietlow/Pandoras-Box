file = "/home/vagrant/.bashrc"

template file do
  source "bashrc.erb"
  mode "0644"
  owner "vagrant"
  group "vagrant"
end

file = "/home/vagrant/.git-prompt.sh"

template file do
  source "git-prompt.erb"
  mode "0644"
  owner "vagrant"
  group "vagrant"
end
