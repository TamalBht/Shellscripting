#!/bin/awk -f
BEGIN{
	FS="~"
	highest=0
	
	}


{
	marks=($3+$4+$5)
	if(marks>highest)
		highest=marks
		student=$0;
	

	}
END{
	print "Details about the student getting highest marks :"
	print student
	}
