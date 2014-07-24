include_recipe "apache2"
 
begin
  t = resources(:template => "apache2.conf")
  t.source "apache2.conf.erb"
  t.cookbook "custom"
rescue Chef::Exceptions::ResourceNotFound
  Chef::Log.warn "could not find template apache2.conf to modify"
end