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

# Install a compatible version of Werkzeug
# You may need to replace 'X.X.X' with the specific version number compatible with Flask 2.1.0
package { 'Werkzeug':
  ensure   => 'X.X.X',
  provider => 'pip3',
}

