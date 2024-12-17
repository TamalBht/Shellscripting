#!/bin/bash
add() {
read -p "Enter a number " n1
read -p "Enter a number " n2
if [[ "$n1" =~ ^[a-zA-Z]+$ ]] || [[ "$n2" =~ ^[a-zA-Z]+$ ]]
then
	echo "Invalid Input"
else
	echo "$(( n1+n2 ))"
fi
}

sub() {
read -p "Enter a number " n1
read -p "Enter a number " n2
if [[ "$n1" =~ ^[a-zA-Z]+$ ]] || [[ "$n2" =~ ^[a-zA-Z]+$ ]]
then
	echo "Invalid Input"
else
	echo "$(( n1-n2 ))"
fi
}
mul(){
read -p "Enter a number " n1
read -p "Enter a number " n2
if [[ "$n1" =~ ^[a-zA-Z]+$ ]] || [[ "$n2" =~ ^[a-zA-Z]+$ ]]
then
	echo "Invalid Input"
else
	echo "$(( n1*n2 ))"
fi
}
div(){
read -p "Enter a number " n1
read -p "Enter a number " n2
if [[ "$n1" =~ ^[a-zA-Z]+$ ]] || [[ "$n2" =~ ^[a-zA-Z]+$ ]]
then
	echo "Invalid Input"
else
	echo "$(( n1/n2 ))"
fi
}
while true
do
	echo -e "1.Addition\t2.Subtraction\n3.Multiplication\t4.Division\n5.Exit\n"
	read ch
	case $ch in
		1) add
			;;
		2) sub
			;;
		3) mul
			;;
		4) div
			;;
		5) exit
			;;
		*) echo "Invalid choice"
			;;
	esac
done

