class python3 {
    package { 'python3':
        ensure => present,
        provider => 'apt'
    }

    include python3::pip3

}

