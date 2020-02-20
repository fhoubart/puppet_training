class muppetweb {
  require web

  package {'git':
    ensure => installed,
    before => Vcsrepo['/var/www/muppet'],
  }

  file {'/etc/apache2/sites-available/muppetweb.conf':
    ensure => file,
    source => 'puppet:///modules/muppetweb/muppetweb.conf',
    #notify => Service['apache2']
    before => File['muppet_site_link']
  }

  file {'muppet_site_link':
    ensure => link,
    path => '/etc/apache2/sites-enabled/muppetweb.conf',
    target => '/etc/apache2/sites-available/muppetweb.conf',
  }

  vcsrepo { '/var/www/muppet':
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/fhoubart/muppet-web.git'    
  }
}
