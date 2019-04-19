node default {
    notify { "Default message":
	message => "
		This Puppet is managed by Rahul Gandhi
	"
   }
}


node server1.example.com {
	include httpd
	include java
	class {'::tomcat':
		user => 'root',
		group => 'root',
	}
	include sudo
	include prefs
	include base
}

node server2.example.com {
	include httpd
	include java
	include tomcat
	include sudo
	include prefs
	include base
}
#node server3.example.com {
#	include sudo
#	include prefs
#	include base
#}
