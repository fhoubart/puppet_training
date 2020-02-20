class muppetweb {
  include web

  package {'git':
    ensure => installed,
    #before => Vcsrepo['/var/www/muppet'],
  }
  vcsrepo { '/var/www/muppet':
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/fhoubart/muppet-web.git'    
  }
}
