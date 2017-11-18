# Various utility functions

# Send my public SSH key to another machine
function copysshkey () {
	cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys'
}