#!/bin/bash
itemloc="/home/tamal/myscripts//var.sh"
let j=0
for i in $(cat ${itemloc})
do
	echo "$i"
	let j=j+1
	echo "$j"
done
