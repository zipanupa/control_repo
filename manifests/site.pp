node default{
  file{'/root/README':
     ensure  => file,
     content => "this is a readme\n",
     owner   => 'root',
    }
  }
 node 'master.puppet.vm' {
    include role::master_server
    file{'/root/README':
     ensure  => file,
     content => "$fqdn\n",
    }
 }

node /^web/ {
    include role::app_server
}

node /^db/ {
    include role::db_server
}
