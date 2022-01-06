#!/usr/bin/expect

set USR "<your email here>"
set PWD "<your gmail here>"

set timeout 120

spawn globalprotect connect -p portal.gp.ext.tri.global
expect "username*" {
	send "$USR\n"
	expect "Password:" { send "$PWD\n" }
	}
#interact


# requirement: 
# apt-get install expect
# add the following line in ~/.bashrc: 
# alias govpn='~/mybash/vpn-login.sh'
