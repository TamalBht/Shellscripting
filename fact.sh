#!/bin/bash
fact(){
local num=$1
result=1
 if [[ $num -eq 0 ]]
 then
	 echo "1"
 else
	 for (( i=1;i<=$num;i++ ))
	 do
		let result=$(( result*i ))
	 done
 fi
 echo "$result"
}
read -p "Enter a number" numm
if [[ "$numm" =~ [a-zA-Z] ]] || [[ "$numm" -lt 0 ]]
then
	echo "Invalid Input"
	exit
fi
fact $numm
