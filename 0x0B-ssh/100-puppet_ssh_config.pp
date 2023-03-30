# Client side config with Puppet
 URI.encode_www_form_component(string, enc=nil)

file { '/etc/ssh/ssh_config':
  ensure  => present,
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
  content => template('/etc/ssh/ssh_config'),
}
