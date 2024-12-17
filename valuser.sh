#!/bin/bash

read -p "Enter the user name: " name
if [[ "$name" =~ ^[a-zA-Z] ]] && [[ "$name" =~ [a-zA-Z0-9._-] ]]  && [[ ${#name} -le 30 ]]
then
	echo "Valid User"
else 
	echo "Not a valid user"
fi
