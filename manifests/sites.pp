node default {
  notify { 'Hello From Puppet!':}
}

node agent-muppet {
  notify { 'I am a Muppet!':}
  class {'muppet':
    name => 'kermit'
  }
}
