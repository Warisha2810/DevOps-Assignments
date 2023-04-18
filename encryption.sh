#/bin/bash

if [ -z "$1" ]
then
	password=$(openss1 rand -base64 8)
else
	password=$1
fi

if [ -z "$2" ]
then
	echo "Named argument not provided."
else
	case $2 in
	--algo)
		echo "Algo name: SHA1"
		echo "Encrypted password: $(echo -n $password | openssl sha1)"
		;;
	--text)
		echo "Text password: $password"
		echo "Encrypted password using BLAKE 2: $(echo -n $password | b2sum)"
		echo "Encrypted password: $(echo -n $password | openssl md5)"
		echo "Encrypted password: $(echo -n $password | openssl sha512)"
		;;
	--length)
		echo "Length of password: ${#password}"
		;;
	*)
		echo "Invalid named argument."
		;;
	esac
fi

