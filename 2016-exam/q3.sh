checkDirectories()
{
	echo $1
	for file in [$1]*
		do
			if [ -d $file ]
				then
					echo "$file is a directory"
			fi
		done
}

checkFiles()
{
	echo "Enter a filename"
	read filename

	echo "Enter another filename"
	read otherFilename

	if [ $filename -ot $otherFilename ]
		then
			echo "$filename is older than $otherFilename\n"
		else
			echo "$filename is not older than $otherFilename\n"
	fi


}

options=("List Some directories" "Check Some files" "Quit")
while true
do
	select option in "${options[@]}" # careful with this syntax, make sure { and } are in the right places
		do
			case $option in
			"List Some directories")
				checkDirectories $1
				break;
			;;
			"Check Some files")
				checkFiles
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