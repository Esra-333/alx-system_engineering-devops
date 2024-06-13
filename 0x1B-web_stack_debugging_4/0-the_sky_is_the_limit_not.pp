#Fix problem of high amount of requests

exec { 'fix --for-nginx:
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx,
  path => '/usr/local/bin/:/bin/',
}

exec { 'nginx-restart':
  command => '/etc/int.d/nginx restart',
  parh    => '/etc/int.d/',
}
