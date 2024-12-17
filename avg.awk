#!/bin/awk -f
BEGIN{
	FS="~"
	
	}
NR>1{
	
	
	avg=($3+$4+$5)/3
	
	
	print $0 
	print "Average " avg
	}
