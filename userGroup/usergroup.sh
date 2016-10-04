#!/bin/bash
clear

passwd_file=/etc/passwd
group_file=/etc/group


checkUser()
{
	userFound=0;

	for userName in $(awk 'BEGIN{FS=":"}{print $1}'<"$passwd_file")
	do

		if [ $userName == $userToLookUp ]
			then userFound=1
		fi
	done
	echo $userFound
}

createUser()
{
	groupFound=0
	
	echo -n "Please enter the username you want to create: "
	read userToCreate

	echo -n "Please enter the group you want to add this user to: "
	read groupToAdd

	#check if group exists
	groupFound=$(checkGroup $groupToAdd)
	

	if [ $groupFound -eq 1 ]
		then 
			#add user
			echo "adding User"
			useradd -m $userToCreate -g $groupToAdd
		else 
			#add user and group
			echo "adding user and group"
			groupadd $groupToAdd
			useradd -m $userToCreate -g $groupToAdd			
	fi
	echo "User $userToCreate added successfully with group $groupToAdd"
	echo "You have to obey the user agreement" > /home/$userToCreate/UserAgreement

}

deleteUser()
{
	echo -n "Please enter the username you want to delete: "
	read userToDelete
	
	userdel -r $userToDelete
	echo "$userToDelete deleted"
}

checkGroup()
{
	groupFound=0;

	for groupName in $(awk 'BEGIN{FS=":"}{print $1}'<"$group_file")
	do

		if [ $groupName == $1 ]
			then groupFound=1
		fi
	done

	echo $groupFound
}

createGroup()
{
	echo -n "Please enter the group name you want to add: "
	read groupToAdd

	groupadd $groupToAdd
	echo "$groupToAdd successfullt added"
}

deleteGroup()
{
	echo -n "Please enter the group you want to delete: "
	read groupToDelete
	
	groupdel $groupToDelete
	echo "$groupToDelete deleted"
}

echo Welcome to the user creation tool.
echo Please choose from one of the following options

options=("Check if a user exists" "Create user" "Delete user" "Check if a group exists" "Create group" "Delete group" "Exit")

while true
do
	select option in "${options[@]}"
		do
			case $option in
			"Check if a user exists")
				echo -n "Please enter the username to check: "
				read userToCheck
				status=$(checkUser $userToCheck);
				
				if [ $status == 1 ]
					then 
					echo "User $userToCheck found"
				else 
					echo "User $userToCheck not found"
				fi
				break;
			;;
			"Create user")
				createUser;
				break;
			;;
			"Delete user")
				deleteUser;
				break;
			;;
			"Check if a group exists")
				echo -n "Please enter a group to check: "
				read groupToCheck
				status=$(checkGroup $groupToCheck)

				if [ $status == 1 ]
					then
					echo "Group $groupToCheck found and exists"
				else
					echo "Group $groupToCheck not found"
				fi
				break;
			;;
			"Create group")
				createGroup;
				break;
			;;
			"Delete group")
				deleteGroup;
				break;
			;;
			"Exit")
				exit
			;;
			*)
			echo "Invalid option selected, try again"
			;;
			esac
		done
done


