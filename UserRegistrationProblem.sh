#!/bin/bash -x

echo "--------------------------WELCOME USER REGISTRATION SYSTEM----------------------------"

#TO FUNCTION  IN FIRST NAME
function firstName () {
	echo "Enter the first word"
	read word
	pattern=[a-zA-Z]{3,}

	#TO CHECK THE VALID AND INVALID
	if [[ $word =~ $pattern ]]
	then
		printf "valid first name"
	else
		printf "invalid first name"
	fi
}
firstName
