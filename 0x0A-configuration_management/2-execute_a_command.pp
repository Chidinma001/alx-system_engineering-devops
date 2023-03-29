#Kill a process with exec

exec { 'pkill -f killmenow':
path => '/usr/bin/:/usr/local/bin/:/bin/'
}
