#!/bin/bash
while true
do
	echo -e "1.Enter student details\n2.Display student details\n3.Exit\n"
	read choice
	case $choice in
		1) read -p "Enter name department and sections separated by spaces " name dept sec
			read -sp "ENter password " password
			entry="$name|$dept|$sec|$password"
			echo "$entry" >> personal.dat
			;;
		2) read -sp "Password: " pwd
			detail=$( grep "|$pwd" personal.dat  )
			if [[ ${#detail} -eq 0 ]]
			then
				echo "Failed.Wrong password"
			else
				echo "Password matcched successfully"
				echo "here is the details"
				echo "Name= $( echo "$detail" | cut -d"|" -f1  )"
				echo "Department=$( echo "$detail" | cut -d"|" -f2  )"
				echo "Section=$( echo "$detail" | cut -d"|" -f3  )"
				echo "Password=$( echo "$detail" | cut -d"|" -f4  )"
			fi
			;;
		3) echo "Exiting...."
			sleep 1s
			exit
			;;
		*) echo "Invaild choice"
			;;
	esac
done
			

