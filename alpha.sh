#!/bin/bash
read -p "Enter something: " inp
if [[ "$inp" =~ ^[a-zA-Z]+$ ]]
then
	echo "Pure"
else
	echo "Not"
fi
