node default {
  notify { 'Hello From Puppet!':}
}

node agent-muppet {
  include muppet
}
