class muppetweb {
  include web

  package {'git':
    ensure => installed,
    before => Vcsrepo['/var/www/html'],
  }
  vcsrepo { '/var/www/html':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/fhoubart/muppet-web.git'    
  }
}
