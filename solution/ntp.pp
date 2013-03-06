package { 'ntp':
  ensure => 'present',
}

service { 'ntp':
  ensure => 'running',
  enable => 'true',
  require => Package['ntp'],
  subscribe => File['/etc/ntp.conf']
}

file { '/etc/ntp.conf':
  ensure  => 'file',
  owner   => '0',
  group   => '0',
  mode    => '644',
  source  => '/vagrant/files/ntp.conf',
}
