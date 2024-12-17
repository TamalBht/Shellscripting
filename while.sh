#!/bin/bash
count=0
read -p "How many times?" num
while [[ $count -lt $num ]]
do
	echo "In the loop"
	let count++
done
echo "Exited the loop and it was run for $count times"
