node 'jenkins.example.com' {
	#class { '::jenkins':
	# 	file_name => "rahul.repo",
#		file_path => "/etc/yum.repos.d/rahul.repo",
#	}
	include jenkins
	include base
	include java
}
