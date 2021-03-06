name "rubygems_db_master"
description "The role for the primary database server for the RubyGems.org app"

run_list(
  "role[base]",
  "recipe[postgresql::server]"
)

default_attributes(
  "postgresql" => {
    "version" => "9.2",
    "listen_addresses" => "*",
    "ssl" => false,
    "work_mem" => "100MB",
    "shared_buffers" => "24MB",
    "users" => [
      {
        "username" => "postgres",
        "password" => "postgres",
        "superuser" => true,
        "createdb" => true,
        "login" => true
      }
    ],
    "pg_hba" => [
      {
        "type" => "host",
        "db" => "gemcutter_production",
        "user" => "postgres",
        "password" => "postgres",
        "addr" => "10.249.31.114/0",
        "method" => "md5"
      }
    ]
  }
)
