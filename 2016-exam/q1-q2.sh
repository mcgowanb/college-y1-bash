#!/bin/bash
square()
{
	if [ $# -eq 1 ]
		then 
			result=$[$1*$1]
			echo "the square is $result"
		else
			echo "Error message here"
	fi		
}


divide()
{
	readonly roVar=10
	countVar=$(grep -c "hi" testFile)
	echo $countVar
	average=$(($countVar / $roVar))
	echo "result is $average"
}

options=("Square" "Divide" "Quit")
while true
do
	select option in "${options[@]}" # careful with this syntax, make sure { and } are in the right places
		do
			case $option in
			"Square")
				square 7
				break;
			;;
			"Divide")
				divide
				break;
			;;
			"Quit")
				exit;
			;;
			*)
			echo "Invalid option selected, try again"
			;;
			esac
		done
done


