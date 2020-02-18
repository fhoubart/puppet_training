class muppet::peggy {

  include muppet::hello
  
  group { 'peggy':
    ensure => 'present'
  }

  user { 'peggy':
    ensure => 'present',
    shell => '/bin/bash',
    home => '/home/peggy',
    gid => 'peggy',
  }

  file { '/home/peggy':
    ensure => 'directory',
    owner => 'peggy',
    group => 'peggy',
  }

  file { '/home/peggy/.bashrc':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

  file { '/home/peggy/.profile':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

}
