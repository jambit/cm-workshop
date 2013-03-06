package { 'nginx':
  ensure => 'present',
}

service { 'nginx':
  ensure => 'running',
  enable => 'true',
  require => Package['nginx'],
}

file { '/usr/share/nginx/www/index.html':
  ensure  => 'file',
  source  => '/vagrant/files/index.html',
}
