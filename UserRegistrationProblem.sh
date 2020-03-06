#!/bin/bash -x

echo "--------------------------WELCOME USER REGISTRATION SYSTEM----------------------------"

#TO FUNCTION  IN FIRST NAME
function firstName () {
	echo "Enter the word"
	read word
	pattern=[a-zA-Z]{3,}

	#TO CHECK THE VALID AND INVALID
	if [[ $word =~ $pattern ]]
	then
		printf "valid name"
	else
		printf "invalid name"
	fi
}

#TO FUNCTION IN LAST NAME
function lastName(){
	#TO FIRST FUNCTION CALL
	firstName
}

#TO FUNCTION CALL
firstName
lastName
