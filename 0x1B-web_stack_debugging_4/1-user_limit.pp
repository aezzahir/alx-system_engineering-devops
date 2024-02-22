exec { 'increase_hard_file_limit':
  command => 'sed -i "/USERNAME hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}

exec { 'increase_soft_file_limit':
  command => 'sed -i "/USERNAME soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/',
}