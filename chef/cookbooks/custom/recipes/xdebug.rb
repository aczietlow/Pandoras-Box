# Install xdebug
php_pear "xdebug" do
  action :install
end

template "/etc/php5/apache2/conf.d/xdebug.ini" do
  source "xdebug.ini.erb"
  mode "0644"
  notifies :restart, "service[apache2]", :delayed
end
