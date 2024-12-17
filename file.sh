#!/bin/bash
while true
do
	echo -e "1.Show permissions of a file\n2.Number of files in the current directory\n3.Show the last modification time\n4.Exit: "
	read choice
	case $choice in
		1) read -p "Enter the file name: " fname
			if [[ -e $fname ]]
			then
				fileprm=$( ls -l | grep "$fname" | cut -c2-10  )
				echo "$fileprm"
			else
				echo "File doesn't exist"
			fi
			;;
		2) num=$( ls -l |  wc -l  )
			echo "$(( num -1 ))"
			;;
		3) read -p "Enter file name: " fname
			if [[ -e $fname ]]
			then
				fmod=$( ls -l | grep "$fname" | cut -d" " -f6-11  )
				echo "$fmod"
			else
				echo "File doesn't exist"
			fi
			;;
		4) echo "Exiting......"
			sleep 1s
			exit
			;;
		*) echo "Invalid choice"
			;;
	esac
done	


