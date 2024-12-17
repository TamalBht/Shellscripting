#!/bin/bash
summ(){
local num=$1
result=0
while (( $num > 0 ))
do
	let result=$result+$(( num%10 ))
	(( num=$num/10 ))
done
echo "Sum is $result"
}

read -p "Enter a whole number" numm
if [[ "$numm" =~ [a-zA-Z] ]] || [[ "$numm" -lt 0 ]]
then
	echo "Invalid Input"
	exit
fi
summ $numm


