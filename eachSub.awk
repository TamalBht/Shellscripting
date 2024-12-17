#!/bin/bash
BEGIN{
	FS="~"
	h1=0
	h2=0
	h3=0
	}
NR>1	{
		if($3>h1)
			h1=$3
			s1=$1;
		if($4>h2)
			h2=$4
			s2=$1
			;
			if($5>h3)
				h3=$5
				s3=$1;

		}
END{
	print "The toppers of each subject respectively are" s1 " " s2 " "  s3
	}
