#!/bin/bash

passwd_file=/etc/passwd

#Part 2
create()
{
	echo $1
	echo $2
	if [ $1 != $2 ]
        then
            groupadd $1
			useradd  $2		
			echo "Group $1 with user $2 created"
			userdel  $2
			groupdel $1
			echo "Group $1 with user $2 deleted"

		else
             echo "Error, two arguements are the same"

	fi		
}

#Part 3
check()
{
	echo "Enter Username"
	read userToCheck
	userFound=0

	for userName in $(awk 'BEGIN{FS=":"}{print $1}'<"$passwd_file")
	do
		if [ $userName == $userToCheck ]
			then userFound=1
		fi
	done

	if [ $userFound -eq 1 ]
		then
			echo "User $userToCheck found"
		else
			echo "User $userToCheck not found in the system"
	fi
}


# Part 1
if [ $# -eq 2 ]
        then
             myArray=($1 $2)
        else
             echo "Incorrect number of arguements"
             exit 1
fi

#Part 4
options=("Create and delete" "Check if a user exists" "Quit")
while true
do
	select option in "${options[@]}" # careful with this syntax, make sure { and } are in the right places
		do
			case $option in
			"Create and delete")
				create $(create $1 $2)
				break;
			;;
			"Check if a user exists")
				check
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