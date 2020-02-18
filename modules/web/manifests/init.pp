class web {


  $chemin = "/tmp/text"
  $content = 1 + 2*3

  $number = 1 + 2*3
  $text = "Le nombre est ${number}"
  $reg = regsubst($text, /.*(n[a-z]*).*([0-9]+).*/,'\1 \2')

  file { $chemin: 
    content => "${reg}",
  }

  file { '/tmp/apache2.conf':
    content => epp('web/apache2.conf.epp', {listen=>80, documentRoot => '/var/www/html'}),
  }
  file { '/tmp/web':
    source => 'puppet:///modules/web/web.txt'
  }
  file { '/tmp/web2':
    source => 'puppet:///modules/web/2/web.txt'
  }
}
