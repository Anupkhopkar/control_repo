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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCvt8UOo2IX7nKPxyAZLyoLgzEp5upGTlspR6ctnCQ+n+fXEt4U0W5sau3VgutdNipPRXcW5z9bZJOivPCtyW1R+Vs9auiDkMT+21/ERq7+mAmSj/iQfeSSjHBBB3XBKYOp8pp39HIpc6HiLhEZ1OSBPkDyIr1qvrU//wk7MLiu4A4W/gueFKeffiowRXp3AFJ7LPes4zMAcOze36GPfmGa9YtTTOnhQGpaAWNQHyb2dcSAibik2aOUDoGxyrAhgf2pfia/PmUYTrhZWDaf+5QofPCgUJ4VWJQhLbvx6QtfTbCI52zRe5mAv3T6t1+REZraQY5unsMa/lIdMsmXnh/Z',
	}  
}
