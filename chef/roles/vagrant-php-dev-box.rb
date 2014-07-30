# Name of the role should match the name of the file
name "vagrant-php-dev-box"

override_attributes(
    "mysql" => {
        "server_root_password" => 'root',
        "server_repl_password" => 'root',
        "server_debian_password" => 'root'
    }
)

default_attributes(
  "apache" => {
    "listen_ports" => ["80", "443"],
    "version" => "2.4"
  },
  ':mongodb' => {
    ':user' => 'root',
    ':password' => 'root'
  }
)

# In Chef these run from top to bottom.
run_list(
    "recipe[apt]",
    "recipe[apache2]",
    "recipe[apache2::mod_rewrite]",
    "recipe[apache2::mod_ssl]",
    "recipe[mysql::client]",
    "recipe[mysql::server]",
    "recipe[zeromq]",
    "recipe[mongodb]",
    "recipe[custom::php]",
    # "recipe[custom::xhprof]",
    # "recipe[custom::xdebug]",
    
    "recipe[custom::git]",
    "recipe[custom::bash]",
    "recipe[composer]",
    "recipe[custom::composer]",
    "recipe[custom::rsync]",
    "recipe[vim]"
    
    
)
