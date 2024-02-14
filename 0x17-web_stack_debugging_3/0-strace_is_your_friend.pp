# 0. Strace is your friend
class { 'apache':
  default_mods => false,
}

file { '/etc/apache2/sites-available/000-default.conf':
  ensure  => file,
  source  => 'puppet:///modules/mymodule/000-default.conf',
  require => Class['apache'],
  notify  => Service['apache2'],
}

service { 'apache2':
  ensure  => running,
  enable  => true,
  require => Package['apache2'],
}