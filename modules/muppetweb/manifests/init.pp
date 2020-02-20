class muppetweb {
  include web

  vcsrepo { '/var/www/html':
    ensure   => present,
    provider => git,
    source   => 'git://github.com/fhoubart/muppet-web.git'    
  }
}
