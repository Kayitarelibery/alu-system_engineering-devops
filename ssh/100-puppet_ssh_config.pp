# Configures the SSH client to use the ~/.ssh/school key and refuse password authentication

file_line { 'Turn off password auth':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => '    PasswordAuthentication no',
}

file_line { 'Declare identity file':
    ensure => present,
    path   => '/etc/ssh/ssh_config',
    line   => '    IdentityFile ~/.ssh/school',
}
