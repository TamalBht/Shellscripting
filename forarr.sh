#!/bin/bash
arr=( )
read -p "Enter number of inputs" num
for (( i=0;i<$num;i++ ))
do
	read -p "ENter Inpout" inp
	(( arr[i]=$inp ))
done
echo "${arr[@]}"
echo "size of array: ${#arr[@]}"

