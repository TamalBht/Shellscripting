#!/bin/bash
add(){
	
 local num1=$1
 local num2=$2
 if [[ "$num1" =~ ^[a-zA-Z]+$ ]] || [[ "$num2" =~ ^[a-zA-Z]+$ ]]
 then
	 echo "Invalid"
 else
 	 echo "$(( num1+num2 ))"
 fi

}
read -p "Enter a number " n1
read -p "ENter another number " n2
add $n1 $n2
