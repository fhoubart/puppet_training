class muppetweb {
  require web

  package {'git':
    ensure => installed,
    before => Vcsrepo['/var/www/muppet'],
  }

  file {'/etc/apache2/sites-available/muppetweb.conf':
    ensure => file,
    source => 'puppet:///modules/muppetweb/muppetweb.conf',
    notify => web::Service['apache2']
  }

  vcsrepo { '/var/www/muppet':
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/fhoubart/muppet-web.git'    
  }
}
