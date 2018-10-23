class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@osboxes':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDmsn1+sTP4rs4JWrTAUFRuORmS4OFcc6ACcvSDRlRpZGpt2qGeLZCGg9Uuy2b9DVfvLuihTlgPi4JQGsgHv+GaPCKPzytW/eliKKtcWm/Ei7lv7dTEor2/rxOjZ4oMUdye5+rzhpfOn/Zxzc9qgXG3rWI+0EPlGcbgr8B2wTCJgadffOWwM39KOPhEYuHYtDN8En/fjeRIRSfbpbNoS4tx91/Vo7yqDV6oFS/EWkwftNaszl+3aZMAhBRia2NoMtnVICEGV0QmTo7qms3NWe9uey8ldlWb4sPZ2ZmecvwL5flJkLlG4RhEMQQGckCdNa2Ts0C2q+LgZxOq1IPE+f4X',
	}  
}
