# Install a package using Puppet

exec { 'install python3-pip':
  command => 'usr/bin/apt-get install python3-pip'
}

exec { 'install python3-venv':
  command => 'usr/bin/apt-get install python3-venv'
}

package { 'python3-pip':
  ensure => installed,
  before => Exec['install python3-pip']
}

package { 'python3-venv':
  ensure => installed,
  before => Exec['install python3-venv'],
  require => Packagae['python3-pip']
}

exec { 'install flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin',
  require => [Package['python3-venv'], Package['python3-pip']]
}
