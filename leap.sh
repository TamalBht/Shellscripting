#!/bin/bash
read -p "Enter a year" year
if [[ "$year" =~ [a-zA-Z] ]] 
then
	echo "Invalid Input"
else
	if (( $year % 4 == 0 ))
	then
		if (( $year % 400 == 0)) && (( $year % 100 == 0))
		then
			echo "Leap Year "
		else
			echo "Not a Leap Year"
		fi
	else
	echo "Not a leap year"
	fi	
fi
