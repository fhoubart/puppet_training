class muppet(
  $muppet_name = 'kermit'
) {
  notify { 'Hello puppet!': }

  group { "${muppet_name}":
    ensure => 'present'
  }

  user { "$muppet_name":
    ensure => 'present',
    shell => '/bin/bash',
    home => '/home/$muppet_name',
    gid => '$muppet_name',
  }

  file { '/home/${muppet_name}':
    ensure => 'directory',
    owner => '${muppet_name}',
    group => '${muppet_name}',
  }

  file { '/home/${muppet_name}/.bashrc':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

  file { '/home/${muppet_name}/.profile':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

}
