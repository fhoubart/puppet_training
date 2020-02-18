class muppet {
  notify { 'Hello puppet!': }

  group { 'kermit':
    ensure => 'present'
  }

  user { 'kermit':
    ensure => 'present',
    shell => '/bin/bash',
    home => '/home/kermit',
    gid => 'kermit',
  }

  file { '/home/kermit':
    ensure => 'directory',
    owner => 'kermit',
    group => 'kermit',
  }

  file { '/home/kermit/.bashrc':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

  file { '/home/kermit/.profile':
    ensure => 'file',
    content => 'echo \'I was created by puppet!\''
  }

}
