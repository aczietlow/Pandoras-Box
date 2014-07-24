# Install xhprof
php_pear "xhprof" do
  action :install
end

template "/etc/php5/apache2/conf.d/xhprof.ini" do
  source "xhprof.ini.erb"
  mode "0644"
  notifies :restart, "service[apache2]", :delayed
end