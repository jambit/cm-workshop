package { "curl":
    ensure => "installed",
}

group { "puppet":
	ensure => "present",
}

file { '/usr/bin/puppet':
    ensure => "link",
    target => "/opt/ruby/bin/puppet",
}
