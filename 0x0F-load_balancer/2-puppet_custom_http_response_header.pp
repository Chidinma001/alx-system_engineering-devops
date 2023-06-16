# Define hos name
Facter.add('nginx_server_hostname') do
    setcode 'hostname'
end

# Install nginx
package { 'nginx':
    ensure => installed,
}

# Configure HTTP response header
file { '/etc/nginx/conf.d/custom-http-header.conf':
    content => "add_header X-Served-By ${::nginx_server_hostname};",
    mode => '0644',
    notify => Service['nginx'],
}
