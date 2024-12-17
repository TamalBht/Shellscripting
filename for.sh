#!/bin/bash

read -p "Enter a number" num
echo "Here is a loop starting from 1 to $num "
for ((i=1 ; i<=${num} ; i++ ))
do
	echo "$i"
done
