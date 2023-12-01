class webserver::install {
  package { 'nginx':
    ensure => 'present',
  } ~> 
  service { 'nginx':
    ensure => 'running',
    enable => true,
  } ~>
  notify { 'Nginx service and package are configured':
    message => 'Nginx service and package are configured',
  }
}

