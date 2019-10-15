node default {
  file { '/opt/README':
    ensure => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
