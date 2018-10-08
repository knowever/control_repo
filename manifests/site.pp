node default {
  file {'/root/README':
    ensure => file,
    contest => 'This is a readme',
  }
}
