#!/bin/bash
echo -n "Enter the values of array space separated  "
read -a arr
len=${#arr[@]}
echo "LEnth of the array is : $len"
echo "Original array: ${arr[@]}"
for (( k=0;k<len;k++ ))
do
	if [[ "${arr[k]}" =~ [a-zA-Z]  ]]
	then
		echo "Invalid inputs"
		exit
	fi
done
for (( i=0;i<len-1;i++))
do
	for (( j=i+1;j<len;j++ ))
	do
		if (( ${arr[i]} > ${arr[j]} ))
		then
			temp=${arr[j]}
			(( arr[j]=${arr[i]} ))
			(( arr[i]=$temp ))
		fi
	done
done
echo "Sorted array: ${arr[@]}"

