class profile::ssh {
  exec {'Create id_rsa.pub':
    command => "ssh-keygen -t rsa -N ''",
    unless  => 'll ~/.ssh/id_rsa.pub',
  }
  file {'~/.ssh/id_rsa.pub':
    requires  => Exec['Create id_rsa.pub'],
    source    => "puppet:///modules/ssh/"
  }
}
