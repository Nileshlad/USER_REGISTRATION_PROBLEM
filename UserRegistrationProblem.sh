#!/bin/bash -x

echo "--------------------------WELCOME USER REGISTRATION SYSTEM----------------------------"

#TO FUNCTION  IN FIRST NAME
function firstName () {
	echo "Enter the word"
	read word
	pattern=[a-zA-Z]{8,}

	#TO CHECK THE VALID AND INVALID
	if [[ $word =~ $pattern ]]
	then
		printf "valid word"
	else
		printf "invalid word"
	fi
}

#TO FUNCTION IN LAST NAME
function lastName(){
	#TO FIRST FUNCTION CALL
	firstName
}

#TO FUNCTION EMAIL
function email(){
	echo "Enter the email"
	read email
	pattern="^[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"

	#TO CHECK THE VALID AND INVALID EMAIL
	if [[ $email =~ $pattern ]]
	then
		printf "valid name"
	else
		printf "invalid name"
	fi
}

#TO FUNCTION MOBILE
function mobileNumber(){
	echo "Enter the mobile number"
	read number
	pattern="(0/91)?[7-9][0-9]{9}"
	#TO CHECK THE VALID AND INVALID EMAIL
	if [[ $number =~ $pattern ]]
	then
		printf "valid number"
	else
		printf "invalid number"
	fi
}

#TO FUNCTION PASSWORD CHARACTERS
function passwordCharacters(){
	echo "Enter the minimum eight characters"
	firstName
}

#TO FUNCTION PASSWORD AT LEAST UPPER CASE
function passwordAtLeastOneUpperCase(){
	echo "Enter the password at least one upper case"
	passwordCharacters
}

#TO FUNCTION  PASSWORD AT LEAST ONE NUMERIC NUMBER
function AtLeastOneNumericNumber(){
	echo "Enter the password rule 3"
	read passwordNumber
	pattern="^[A-Z0-9a-z]{8,}"

	#TO CHECK THE PASSWORD RULE 3
	if [[ $passwordNumber =~ $pattern ]]
	then
		printf "valid password"
	else
		printf "invalid password"
	fi
}
#TO FUNCTION CALL
firstName
lastName
email
mobileNumber
passwordCharacters
passwordAtLeastOneUpperCase
AtLeastOneNumericNumber
