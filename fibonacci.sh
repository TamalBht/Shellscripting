#!/bin/bash
read -p "Enter a number of terms " num
if [[ "$num" =~ [a-zA-Z] ]] || [[ "$num" -le 0 ]]
then
	echo "invalid input"
fi
a=0
b=1
for (( i=0;i<$num;i++ ))
do
	temp=$a
	(( a=$b ))
	(( b=$temp+$a ))
	echo -n "$b "
done

