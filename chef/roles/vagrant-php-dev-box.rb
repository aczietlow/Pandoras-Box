# Name of the role should match the name of the file
name "vagrant-php-dev-box"

override_attributes(
    "mysql" => {
        "server_root_password" => 'root',
        "server_repl_password" => 'root',
        "server_debian_password" => 'root'
    }
)

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
    "recipe[apache2]",
    "recipe[mysql::client]",
    "recipe[mysql::server]",
    "recipe[custom::bash]",
    "recipe[custom::curl]",
    "recipe[composer]",
    #{}"recipe[custom::drush]",
    "recipe[custom::git]",
    #{}"recipe[custom::php]",
    "recipe[custom::rsync]",
    #{}"recipe[custom::xdebug]",

    #{}"recipe[vim]"
)
