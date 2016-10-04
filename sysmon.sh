#!/bin/bash

clear

separator()
{
	echo ""
	echo "=================================================="
	echo ""
}

echo "Welcome to the system monitor control panel"
echo "Please select from one of the following options"

options=("List all running processes" "View java & Apache version information" "Kill Firefox (make sure its running first)" "Exit")

while true
do
	select option in "${options[@]}"
		do
			case $option in
			"List all running processes")
				echo "Listing all running processes"
				separator
				ps -A -f
				separator
				break;
			;;
			"View java & Apache version information")
				separator
				echo "Java Version:"
				java -version
				separator
				echo "Java Compiler Version:"
				javac -version
				separator
				echo "Apache Version:"
				httpd -v
				separator
				break;
			;;

			"Kill Firefox (make sure its running first)")
			separator
			echo "Firefox is running with the following information"
			ps -A -r | grep firefox
			
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