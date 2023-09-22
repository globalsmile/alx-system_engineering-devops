# Install a package using Puppet

package { 'python3-pip':
  ensure => installed,
}

package { 'python3-venv':
  ensure => installed,
}

exec { 'install flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin',
  require => [Package['python3-venv'], Package['python3-pip']
}
