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


run_list(
    "recipe[apt]",
    "recipe[apache2]",
    "recipe[apache2::mod_rewrite]",
    "recipe[apache2::mod_ssl]",
    "recipe[mysql::client]",
    "recipe[mysql::server]",
    "recipe[mongodb]",
    "recipe[custom::bash]",
    "recipe[custom::curl]",
    #{}"recipe[composer]",
    ##{}"recipe[custom::drush]",
    "recipe[custom::git]",
    ##{}"recipe[custom::php]",
    "recipe[custom::rsync]",
    ##{}"recipe[custom::xdebug]",
    "recipe[vim]"
)
