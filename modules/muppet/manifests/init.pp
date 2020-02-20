define muppet {

  group { 'kermit':
    ensure => present,
    # Le before ne sert à rien car il est déjà dans File
    before => File['/home/kermit'],
  }

  user { 'kermit':
    require => Group['kermit'],
    before => File['/home/kermit'],
    ensure => present,
    gid => 'kermit',
    home => "/home/kermit",
    shell => "/bin/bash",
  }

  file { '/home/kermit':
    ensure => directory,
    owner => 'kermit',
    group => 'kermit',
    before => File['/home/kermit/.profile'],
  }

  file { "/home/kermit/.profile":
    ensure => file,
    source => 'puppet:///modules/muppet/.profile',
    owner => 'kermit',
    group => 'kermit',
  }
}
