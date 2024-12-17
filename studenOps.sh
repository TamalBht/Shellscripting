#!/bin/bash
while true
do
	echo -e "1.Enter details\n2. Sort(reverse roll)\n3.Replace Lower with upper in Sorted.dat\n4.Find unique records\n5.Display only the 2nd and the third line from Student.dat\n6.Exit\t"
	read choice
	case $choice in
		1) read -p "Enter Name Marks and Departement space separated" name marks dept
			entry="$name|$marks|$dept"
			echo "$entry" >> Studentt.dat
			;;
		2) sort_entry="$(cat Studentt.dat | sort -t "|" -k2 -r )"
			echo "$sort_entry" > Sortedd.dat
			echo -e "Operation succesfull \n$(cat Sortedd.dat)"
			;;
		3) data="$(cat Sortedd.dat)"
			echo "${data^^}" > Sortedd.dat
			echo -e "Operation Sucessful \n$(cat Sortedd.dat)"
			;;
		4) echo "$(cat Studentt.dat | sort -t "|"  | uniq)"
			;;
		5) echo "$(cat Studentt.dat | awk 'NR==2,NR==3 {print $0}')"
			;;
		6) exit
			;;
		*) echo "Invalid Choice"
			;;
	esac
done

