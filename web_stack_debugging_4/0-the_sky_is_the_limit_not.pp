exec { 'increase-nginx-ulimit':
  command => "/bin/sed -i 's/^ULIMIT=.*/ULIMIT=\"-n 4096\"/' /etc/default/nginx",
  onlyif  => "/bin/grep -q '^ULIMIT=' /etc/default/nginx",
  path    => ['/usr/bin', '/bin', '/usr/sbin', '/sbin'],
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
