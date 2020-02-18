class python3::pip3 {
    package { 'python3-pip':
        ensure => present,
        provider => 'apt',
    }
}

