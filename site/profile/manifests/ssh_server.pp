class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNBvat1tewUXEDI20+wMDF0dcJ8kDOyxGZOBuY8fQ+EuxkV/N5NMIY5kqH0CFCWLUhCYMU6IvEhB6erSDpFGNt6UtU/w4CkG9xHfcowqeYpKOmnzHDjK5+7ZowPEFUuk6kYfQtdL37r15vfB/yO3xWmal7HSYMeUAiDmaN5uXxrWiCcu6AilQ9nD1K9xSIdgy2rMXj7+9wfoj6Z+ouFkN5gS5DQ6YISmQGzxFktGG7HIrgZVyXMTwxJfjMvS/DxCONUD0gnkacD7ucVskCoSt2iNubr5xsP+xGvoNiqtWx2Mkdyu79WClGYfX6ovVEaIK0cVzNM/55smFvZPlmg3rn',
	}  
}
