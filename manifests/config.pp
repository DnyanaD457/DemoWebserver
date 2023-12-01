class webserver::config {
  $hostname = $::networking['hostname']

   file { '/var/www/html/index.html':
          ensure  => 'present',
          content => template('webserver/index.html.erb'),
          mode    => '0644',
        }
}
