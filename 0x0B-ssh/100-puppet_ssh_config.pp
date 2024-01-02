# 4. Client configuration file (w/ Puppet)
file_line {
	ensure	=> 'present',
	path	=> '/etc/ssh/ssh_config',
	line	=> '	PasswordAuthentication no',
}

file_line { 'Declare identity file':
	ensure	=> 'present',
	path   => '/etc/ssh/ssh_config',
	path	=> '	IdentityFile ~/.ssh/school',
}
