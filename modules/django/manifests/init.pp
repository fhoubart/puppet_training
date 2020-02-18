class django {
  include python3

  package { 'django':
    ensure => present,
    provider => pip3,
  }
}

