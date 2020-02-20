node default {
  notify { 'Hello From Puppet!':}
}

node agent-muppet {
  class { 'muppet':
    muppetname => 'peggy'
  }
}
