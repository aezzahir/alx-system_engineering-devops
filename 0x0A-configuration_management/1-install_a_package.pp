# 1-install_a_package.pp

# Ensure pip3 is present for Python package installation
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3 provider
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
