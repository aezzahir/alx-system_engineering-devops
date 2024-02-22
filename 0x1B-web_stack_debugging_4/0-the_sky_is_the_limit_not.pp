file { 'nginx_configuration_adjustment':
  ensure  => 'file',
  path    => '/etc/default/nginx',
  content => inline_template('<%= File.read("/etc/default/nginx").gsub(/15/, "4096") %>'),
}

# Step 2: Restart Nginx to apply changes
-> exec { 'restart_nginx_service':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}