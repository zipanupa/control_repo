class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyn5spJ1blzVmsfmMhHmsnOwDmPGxkCnU6FuMOsqwHn8Ods73+GKUDJ884lljMLso8PrA40wgJU6N3ViTnRGsi3Rax4Ow6y+q92afFv3jG8QtGTi2FPQvlQbUpUrgLCIsXi5l4bXpuWi4I34UJa6Ju1ZEZKGgEsfyhZxXf9dusGrewJz1uNv5Vf5NVLRRpmC5DHM4HVnFtiNmS7raaFgkORXx93CSucCkUFtaG813REA7Kw5MlUgnKNjhRQOI7ME/p2iW2n2ajDdkQ0Ab0gSzTHXceKKvD2mfdbLhWqNLJRLhY5zMBqqTwbfbStUckvvAom9WdD8qYXCaKHz7wJFyb',
  }  
}
