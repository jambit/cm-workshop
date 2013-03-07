class ntp {
  package { 'ntp':
    ensure => 'present',
  }
  
  file { '/etc/ntp.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '644',
    source  => '/vagrant/files/ntp.conf',
    require => Package['ntp'],
  }
  
  service { 'ntp':
    ensure => 'running',
    enable => 'true',
    require => Package['ntp'],
    subscribe => File['/etc/ntp.conf']
  }
}

# Should rather be in a node-specific config or something...
include ntp
