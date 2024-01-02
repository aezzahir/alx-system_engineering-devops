# Puppet script to create ssh config file
file_line {
	ensure	=> 'present',
	path	=> '/etc/ssh/ssh_config',
	line	=> '	PasswordAuthentication no',
}

file_line { 'Declare identity file':
	ensure	=> 'present',
	path	=> '	IdentityFile ~/.ssh/school',
}
